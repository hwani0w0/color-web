node {
  stage('========== Clone repository ==========') {
    checkout scm
  }
  stage('========== Build image ==========') {
    app = docker.build("color-web")
  }
  stage('========== Push image ==========') {
    docker.withRegistry('http://52.79.48.121:30002/hyehwan/', 'color-web') { # Jenkins Credential 정보
      app.push("${env.BUILD_NUMBER}") # 빌드 번호
      app.push("latest") # 태그 정보
    }
  }
}
