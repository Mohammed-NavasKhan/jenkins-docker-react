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
        stage('Clone Repo'){
            steps {
                sh 'git clone https://github.com/Mohammed-NavasKhan/jenkins-docker-react.git'
            }
        }
        stage('Building Image') {
            steps { 
                
                    script {
                        // Adjust the path to the Dockerfile if necessary
                        dockerImage = docker.build("${imageName}") 
                    }
            }
        }
    }
}
