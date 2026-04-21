pipeline {
    agent any

    stages {

        stage('Clone Repository') {
            steps {
                git 'https://github.com/basil-1188/jenkins-todo.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t php-app .'
            }
        }

        stage('Stop Old Container') {
            steps {
                sh 'docker stop php-container || true'
                sh 'docker rm php-container || true'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh 'docker run -d -p 80:80 --name php-container php-app'
            }
        }
    }
}