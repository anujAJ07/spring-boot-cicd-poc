pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building the application...'
                // Grant execute permission to the mvnw script
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
    }
}