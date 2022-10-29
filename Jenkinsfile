pipeline {
    agent any
    tools {
        maven '3.8.6'
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
					sh 'echo ${BUILD_TIMESTAMP}'
					sh "docker login -u imran1609 -p imran1609"
                    def customImage = docker.build("imran1609/sweassign2:${BUILD_TIMESTAMP}")
                }
            }
        }
        stage('Push Image To Hub'){
            steps{
                script{
                    sh 'docker push imran1609/sweassign2:${BUILD_TIMESTAMP}'
				}
			}
		}
		stage("Deploying to Kubernetes"){
			steps{
				script{
					sh 'kubectl set image deployment/assignment2dep sweassign2=imran1609/sweassign2:${BUILD_TIMESTAMP}'
				}
			}
		}
}
}