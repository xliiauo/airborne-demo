pipeline {
  agent any
  stages {
    stage("Spin up the project") {
      steps {
        sh "docker --version"
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
