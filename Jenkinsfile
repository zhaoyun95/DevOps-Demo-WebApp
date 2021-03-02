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
        sh 'echo "k8s-pipeline"'
      }
    }
  } // end stages
}