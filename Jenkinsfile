pipeline {
  agent any
  stages {
    stage("Spin up the project") {
      steps {
        dir "main"
        sh "docker-compose up -d"
      }
    }
    stage("Run component test") {
      agent { dockerfile { dir "test" } }
      steps {
        sh "BASE_URL=main:4567 rspec"
      }
    }
  }
}
