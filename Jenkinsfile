pipeline {
    agent any
    tools {
        maven 'maven-3.6.3'
    }
    stages{
        stage('Build Maven'){
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/imran1609/SWE645Assign2']]])
                sh 'mvn clean install'
            }
        }
        stage('Build Docker Image'){
            steps{
                script{
                    sh 'docker build -t imran1609/sweassign2 .'
                }
            }
        }
        stage('Push Image To Hub'){
            steps{
                script{
                    sh 'docker login -u imran1609 -p imran1609'
                    sh 'docker push imran1609/sweassign2'

                }
            }
        }
    }
}
