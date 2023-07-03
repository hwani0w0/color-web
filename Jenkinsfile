pipeline {
    agent any 
    stages {
        stage('Build') { 
            steps {
                sh 'sudo docker build --tag 52.79.48.121:30002/hyehwan/color-web:latest -f color-web/Dockerfile .'
            }
        }
        stage('Push') { 
            steps {
                sh 'sudo podman login 52.79.48.121:30002 --username admin --password Harbor12345 --tls-verify=false'
                sh 'sudo podman push 52.79.48.121:30002/hyehwan/color-web:latest'
            }
        }
        stage('Deploy') { 
            steps {
                sh 'kubectl apply -f color-web/hh-deployment.yaml'
                sh 'kubectl apply -f color-web/hh-service.yaml'
            }
        }        
    }
}
