pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'bhagat1221/nginx-mini-project'
        DOCKER_CREDENTIALS_ID = 'docker-hub-creds'  // the ID you added in Jenkins credentials
    }

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/Bhagatrepo/nginx-mini-project.git'
                branch: 'main',
                credentialsId: 'f9a82818-1d89-4a34-9e79-7f299e60dde2'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build(DOCKER_IMAGE)
                }
            }
        }

        stage('Push to Docker Hub') {
            steps {
                script {
                    docker.withRegistry('https://index.docker.io/v1/', DOCKER_CREDENTIALS_ID) {
                        dockerImage.push('latest')
                    }
                }
            }
        }
    }
}
