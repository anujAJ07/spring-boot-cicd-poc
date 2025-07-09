pipeline {
    agent any
    tools {
        jdk 'JDK-21'
    }
    stages {
        stage('Build') {
            steps {
                echo 'Building the application...'
                sh 'chmod +x mvnw'
                sh './mvnw clean package'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing the application...'
                sh './mvnw test'
            }
        }
        stage('Build Docker Image') {
            agent {
                // Run this stage inside a container that has Docker installed
                docker { image 'docker:latest' }
            }
            steps {
                echo 'Building the Docker image...'
                script {
                    def dockerImage = docker.build("spring-boot-cicd-poc:latest")
                }
            }
        }
    }
}