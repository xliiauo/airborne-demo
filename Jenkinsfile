pipeline {
  agent { docker "ruby:2.4.1-alpine" }
  stages {
    stage("Spring up the project") {
      steps {
        sh "docker --version"
      }
    }
    stage("Test") {
      steps {
        sh "ruby --version"
      }
    }
  }
}
