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
      agent { dockerfile { dir "test" } }
      steps {
        dir "test"
        sh "BASE_URL=main:4567 rspec"
      }
    }
  }
  post {
    always {
      sh "docker stop main && docker rm main"
    }
  }
}
