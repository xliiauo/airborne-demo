pipeline {
  agent any
  stages {
    stage("Spin up the project") {
      steps {
        sh "cd main"
        sh "docker build -t main ."
        sh "docker run -d -p 4567:4567 main"
      }
    }
    stage("Run component test") {
      agent { docker "ruby:2.4.1-alpine" }
      steps {
        sh "ruby --version"
      }
    }
  }
}
