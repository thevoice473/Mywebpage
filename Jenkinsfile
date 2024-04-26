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
                // Add commands to run tests here (optional)
            }
        }
        stage('Push Docker Image') {
            steps {
                script {
                    docker.withRegistry('https://hub.docker.com', 'thevoice473') {
                        docker.image('mywebapp:latest').push()
                    }
                }
            }
        }
    }
}
