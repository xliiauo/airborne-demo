pipeline {
  agent any
  stages {
    stage("Spin up the project") {
      steps {
        sh "docker build -t main ./main/."
        sh "docker run --name main -d -p 4567:4567 main"
      }
    }
    stage("Run component test") {
      agent { docker "ruby:2.4.1-alpine" }
      steps {
        sh "BASE_URL=main:4567 rspec"
      }
    }
  }
}
