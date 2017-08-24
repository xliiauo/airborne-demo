pipeline {
  agent any
  stages {
    stage("Spin up the project") {
      steps {
        sh "docker network create component-test"
        sh "cd main && docker-compose up -d"
      }
    }
    stage("Run component test") {
      agent {
        dockerfile {
          dir "test"
          args "--network component-test"
        }
      }
      steps {
        sh "cd test && BASE_URL=main:4567 rspec"
      }
    }
  }
  post {
    always {
      sh "cd main && docker-compose down"
      sh "docker network rm component-test"
    }
  }
}
