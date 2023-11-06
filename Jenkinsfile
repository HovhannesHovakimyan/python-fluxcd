pipeline {
    agent any

    environment {
        DOCKER_HUB_CREDENTIALS = credentials('docker-hub-credentials')  // Configure Docker Hub credentials in Jenkins
        IMAGE_NAME = "your-dockerhub-username/your-python-app"
    }

    stages {
        stage('Build and Push Docker Image') {
            steps {
                script {
                    sh 'docker build -t $IMAGE_NAME .'
                    sh 'docker login -u $DOCKER_HUB_CREDENTIALS_USR -p $DOCKER_HUB_CREDENTIALS_PSW'
                    sh "docker push $IMAGE_NAME"
                }
            }
        }
    }
}
