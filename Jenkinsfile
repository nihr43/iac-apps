pipeline {
  agent any

  stages {
    stage('lint') {
      steps {
        sh "make lint"
      }
    }
    stage('build') {
      steps {
        sh '''
	  export DOCKER_HOST=ssh://root@docker-0
	  make build
	'''
      }
    }
  }
}
