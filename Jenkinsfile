pipeline {
    agent any
    tools { 
        nodejs "nodejs" 
    }
    
    environment {
        CI = 'true'
        imageName = "programwithnavas/react-app"
    }
    stages {
        // stage('Clean up'){
        //     steps {
        //         deleteDir()
        //     }
        // }
        // stage('Clone Repo'){
        //     steps {
        //         sh 'git clone https://github.com/Mohammed-NavasKhan/jenkins-docker-react.git'
        //     }
        // }
        // stage('Install Dependencies') {
        //     steps {
        //         dir('jenkins-docker-react') {
        //             sh 'npm install'
        //         }
        //     }
        // }
        // stage('Unit Tests') {
        //     steps {
        //         dir('jenkins-docker-react') {
        //             sh 'npm run test'
        //         }
        //     }
        // }
        stage('Building Image') {
            steps {          
                script {
                    dockerImage = docker.build imageName
                }                    
            }   
        }

    }
}
