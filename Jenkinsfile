pipeline {
  agent any
  stages {
    stage('init') {
      steps {
        sh 'echo "Hello World!"'
      }
    }

    stage('PrepareSonar') {
      steps {
        withSonarQubeEnv(installationName: 'sonarqube', envOnly: true, credentialsId: 'sonar2')
      }
    }

  }
}