pipeline {
    agent any 
    stages {
        stage('Build') { 
            steps {
                sh 'rm -rf color-web && git clone https://github.com/hwani0w0/color-web.git'
                sh 'cd color-web'
                sh 'sudo docker build -t color-web:latest -f Dockerfile .'
            }
        }
        stage('Push') { 
            steps {
                sh 'sudo docker tag SOURCE_IMAGE[:TAG] 52.79.48.121:30002/hyehwan/color-web:latest'
                sh 'sudo docker push 52.79.48.121:30002/hyehwan/color-web:latest'
            }
        }
    }
}