pipeline {
  agent { docker "ruby:2.4.1-alpine"}
  stages {
    stage("Test") {
      steps {
        sh "ruby --version"
      }
    }
  }
}
