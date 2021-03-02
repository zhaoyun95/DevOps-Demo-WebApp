pipeline {
  agent any
  stages {
    stage('init') {
      steps {
        sh 'echo "k8s-pipeline"'
      }
    }

    stage('Package') {
      steps {
        sh 'mvn package'
      }
    }

  }
  tools {
    maven 'Maven3.6.3'
  }
  environment {
    SONAR_CREDS = credentials('sonar-user-pass')
  }
}