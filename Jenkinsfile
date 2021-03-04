pipeline {
  agent any
  stages {
    stage('init') {
      steps {
        echo 'k8s-pipeline'
      }
    }

    stage('Package war file') {
      steps {
        echo 'package war file'
        sh 'mvn clean package -Dmaven.test.skip=true'
      }
    }

    stage('Build image') {
      steps {
        script {
          dockerImage = docker.build imagename
        }

      }
    }

    stage('Push image') {
      steps {
        script {
          docker.withRegistry('',registryCredential) {
            dockerImage.push("${env.BUILD_NUMBER}")
            dockerImage.push('latest')
          }
        }

      }
    }

    stage('Remove Unused docker image') {
      steps {
        sh "docker rmi $imagename:$BUILD_NUMBER"
        sh "docker rmi $imagename:latest"
      }
    }

    stage('') {
      steps {
        sh 'kubectl apply -f deployment'
      }
    }

  }
  environment {
    imagename = 'wolfen/devops'
    registryCredential = 'dockerhub'
    dockerImage = ''
  }
}