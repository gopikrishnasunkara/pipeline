pipeline {

    agent any 

    stages {
        stage('git checkout') {
            steps {
                echo 'get the code from github!!'
                git branch: 'main', url: 'https://github.com/vikas-create/IT-AWS-Ops-Dev'
            }
        }

        stage('init') { 
            steps {
                echo 'This stage will run the test cases of the project..!!'
                sh 'terraform init'
                
            }
        }

        stage('Plan') { 
            steps {
                echo 'This stage will build the maven project and packages them into a JAR/WAR'
                sh 'terraform plan'
    }
  }
        stage('Apply') { 
            steps {
                echo 'This stage will build the maven project and packages them into a JAR/WAR'
                sh 'terraform apply --auto-approve'
    }
  }

 }
}
