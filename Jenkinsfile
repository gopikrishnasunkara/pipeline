pipeline {

    agent any 

    stages {
        stage('git checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/gopikrishnasunkara/pipeline'
            }
        }

        stage('init') { 
            steps {
                sh '''terraform init'''
                
            }
        }

        stage('Plan') { 
            steps {
                sh '''terraform plan'''
    }
  }
        stage('Apply') { 
            steps {
                sh '''terraform apply --auto-approve'''
    }
  }

 }
}
