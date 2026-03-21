pipeline {
    agent any

    tools {
        maven 'MAVEN3'
    }

    environment {
        DOCKERHUB_PWD = credentials('CredentialID_DockerHubPWD')
        IMAGE_NAME = 'jasperideal99/comp367-webapp:latest'
    }

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Maven Project') {
            steps {
                sh 'mvn clean install'
            }
        }

        stage('Unit Test') {
            steps {
                sh 'mvn test'
            }
        }

        stage('Docker Login') {
            steps {
                sh 'docker login -u jasperideal99 -p ${DOCKERHUB_PWD}'
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t ${IMAGE_NAME} .'
            }
        }

        stage('Docker Push') {
            steps {
                sh 'docker push ${IMAGE_NAME}'
            }
        }
    }
}
