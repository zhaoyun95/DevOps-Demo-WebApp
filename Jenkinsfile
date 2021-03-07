pipeline {
  agent any

  stages {
    stage('init') {
      steps {
        echo 'k8s-stop'
      }
    }


    stage('Delete deployment') {
      steps {
        sh 'kubectl delete -f deployment.yaml'
      }
    }

    stage('Wait 5 seconds') {
      steps {
        sleep 5
      }
    }

    stage('Check Kubernete Status') {
      steps {
        sh 'kubectl get all -A'
      }
    }

  }

}