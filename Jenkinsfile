pipeline {
  agent any
  stages {
    stage('init') {
      steps {
        sh 'echo "Squad #8 Pipeline"'
      }
    }

    stage('Static-Code Analysis') {
      steps {
        echo 'Static-Code Analysis'
        withSonarQubeEnv('sonarqube') {
          withMaven(maven: 'Maven3.6.3') {
            sh 'mvn validate'
          }

        }

      }
    }

    stage('Build Web App') {
      steps {
        echo 'Build Web App'
      }
    }

    stage('Deploy Artifacts') {
      parallel {
        stage('Deploy to Test') {
          steps {
            echo 'Deploy to Test'
          }
        }

        stage('Store Artifacts') {
          steps {
            echo 'Store Artifacts'
          }
        }

      }
    }

    stage('Testing') {
      parallel {
        stage('UI Test') {
          steps {
            echo 'UI Test'
          }
        }

        stage('Performance Test') {
          steps {
            echo 'Performance Test'
          }
        }

      }
    }

    stage('Deploy to Prod') {
      steps {
        echo 'Deploy to Prod'
      }
    }

    stage('Sanity Test') {
      steps {
        echo 'Sanity Test'
      }
    }

  }
}