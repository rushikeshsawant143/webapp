pipeline{
    agent any
    tools {
        maven 'Maven_local'
    }
    stages {
        stage('git_checkout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: 'd2cc9d02-a94a-4678-b837-9181db4f723c', url: 'https://github.com/rushikeshsawant143/webapp.git']]])
                sh 'pwd'
                sh 'mvn clean install'
                sh 'docker rmi -f apacheimage'
                sh 'docker container rm -f apachecontainer'
                sh 'docker build -t apacheimage .' 
                sh 'docker run -d --name apachecontainer -p 3000:8080 apacheimage'
            }
        }

    }
}
