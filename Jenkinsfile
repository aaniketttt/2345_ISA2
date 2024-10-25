pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/aaniketttt/2345_ISA2.git'  
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t flask-app .'
                }
            }
        }
        stage('Remove Existing Container') {
            steps {
                script {
                    sh 'docker rm -f 2345 || true'  
                }
            }
        }
        stage('Run Container') {
            steps {
                script {
                    sh 'docker run -d -p 5000:5000 --name 2345 flask-app'  
                }
            }
        }
    }
}
