pipeline {
    agent any
    // tools { nodejs "nodejs" }
    environment {
        CI = 'true'
    }
    stages {
        stage('Clean up'){
            steps {
                deleteDir()
            }
        }
        stage('Clone Repo'){
            steps {
                sh 'git clone https://github.com/Mohammed-NavasKhan/jenkins-docker-react.git'
            }
        }
        stage('Install Dependencies') {
            steps {
                dir('jenkins-docker-react') {
                    sh 'npm install'
                }
            }
        }
        stage('Unit Tests') {
            steps {
                dir('jenkins-react') {
                    sh 'npm run test'
                }
            }
        }
        stage('Build') {
            steps {
                dir('jenkins-docker-react') {
                    sh 'docker build -it react-jenkins-docker .'
                }
            }
        }

    }
}
