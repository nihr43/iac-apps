pipeline {
  agent any

  stages {
    stage('checkout source') {
      steps {
        git branch: 'master',
          url: 'https://github.com/nihr43/iac-apps.git'
       }
    }
    stage('lint') {
      steps {
        sh "make lint"
      }
    }
    stage('build') {
      steps {
        sh "make build"
      }
    }
  }
}
