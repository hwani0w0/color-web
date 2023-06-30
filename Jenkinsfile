pipeline {
    agent any 
    stages {
        stage('Build') { 
            steps {
                sh 'rm -rf color-web && git clone https://github.com/hwani0w0/color-web.git'
                sh 'cd color-web'
                sh 'podman build --tag 52.79.48.121:30002/hyehwan/color-web:latest -f Dockerfile .'
            }
        }
        stage('Push') { 
            steps {
                sh 'podman push 52.79.48.121:30002/hyehwan/color-web'
            }
        }
    }
}