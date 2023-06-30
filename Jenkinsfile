node {
  stage('========== Clone repository ==========') {
    checkout scm
  }
  stage('========== Build image ==========') {
    app = docker.build("color-web")
  }
  stage('========== Push image ==========') {
    docker.withRegistry('http://52.79.48.121:30002/hyehwan', 'color-web') { 
      app.push("${env.BUILD_NUMBER}") 
      app.push("latest")
    }
  }
}
