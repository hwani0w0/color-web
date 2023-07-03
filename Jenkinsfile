pipeline {
    agent any 
    stages {
        stage('Build') { 
            steps {
                sh 'rm -rf color-web && git clone https://github.com/hwani0w0/color-web.git'
                sh 'cd color-web'
                sh 'sudo docker build —tag color hyehwan25/color-web:latest -f Dockerfile .'
            }
        }
        stage('Push') { 
            steps {
                sh 'sudo docker push hyehwan25/color-web'
            }
        }
        stage('Deploy') { 
            steps {
                sh 'kubectl apply –f deployment.yaml'
            }
        }        
    }
}
