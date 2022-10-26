pipeline {
    agent any
    tools {
        mvn '3.6.3'
    }
    stages{
        stage('Build Maven'){
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/imran1609/SWE645Assign2']]])
                bat 'mvn clean install'
            }
        }
        stage('Build Docker Image'){
            steps{
                script{
                    bat 'docker build -t imran1609/sweassign2 .'
                }
            }
        }
        stage('Push Image To Hub'){
            steps{
                script{
                    bat 'docker login -u imran1609 -p imran1609'
                    bat 'docker push imran1609/sweassign2'

                }
            }
        }
    }
}
