pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git url: 'https://github.com/bhagat1221/nginx-mini-project.git',
                    branch: 'main',
                    credentialsId: 'f9a82818-1d89-4a34-9e79-7f299e60dde2'
            }
        }

        stage('Build Docker Image') {
            steps {
                echo 'Building Docker image...'
                // docker build command here
            }
        }

        stage('Push to Docker Hub') {
            steps {
                echo 'Pushing Docker image...'
                // docker push command here
            }
        }
    }
}
