pipeline {
    agent any 
    stages {
        stage('Build') { 
            steps {
                sh 'rm -rf color-web && git clone https://github.com/hwani0w0/color-web.git'
                sh 'cd color-web'
                sh 'sudo docker build --tag 52.79.48.121:30002/hyehwan/color-web:latest -f Dockerfile .'
            }
        }
        stage('Push') { 
            steps {
                sh 'sudo docker login 52.79.48.121:30002 -u admin -p Harbor12345'
                sh 'sudo docker push 52.79.48.121:30002/hyehwan/color-web:latest'
            }
        }
        stage('Deploy') { 
            steps {
                sh 'sudo docker stop web && sudo docker rm web'
                sh 'sudo docker run --name web -p 80:80 -dt 52.79.48.121:30002/hyehwan/color-web:latest'
            }
        }        
    }
}
