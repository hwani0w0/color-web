pipeline {
    agent any 
    stages {
        stage('Build') { 
            steps {
                sh 'podman build --tag 52.79.48.121:30002/hyehwan/color-web:$BUILD_NUMBER -f color-web/Dockerfile .'
            }
        }
        stage('Push') { 
            steps {
                sh 'podman login 52.79.48.121:30002 --username admin --password Harbor12345'
                sh 'podman push 52.79.48.121:30002/hyehwan/color-web:$BUILD_NUMBER --tls-verify=false'
            }
        }
        stage('Deploy') { 
            steps {
                sh 'kubectl apply -f color-service.yaml'
                sh 'kubectl set image deployment/color-web color-web=color-web:$BUILD_NUMBER -n hyehwan'
            }
        }        
    }
}
