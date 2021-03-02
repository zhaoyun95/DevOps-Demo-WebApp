pipeline {
  agent any
  
  tools {
    maven 'Maven3.6.3'
  }

  environment {
    SONAR_CREDS = credentials('sonar-user-pass')
  }

  stages {
    stage('init') {
      steps {
        echo "k8s-pipeline"
      }
    }

    stage('Build docker image and publish'){
      steps {
        echo "build docker image"
        
      }
    }


  }
}