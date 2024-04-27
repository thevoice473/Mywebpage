pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/thevoice473/Mywebpage.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('mywebapp:latest')
                }
            }
        }
        stage('Run Tests') {
            steps {
                echo 'Testing'
            }
        }
        stage('Push Docker Image') {
            steps {
                script {
                    sh 'docker --version' // Debugging: Check Docker version
                    sh 'docker info'       // Debugging: Check Docker info
                    docker.withRegistry('https://hub.docker.com', 'thevoice473') {
                        docker.image('mywebapp:latest').push()
                    }
                }
            }
        }
    }
}
