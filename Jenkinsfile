pipeline {

    agent any
    parameters {
        choice(name: 'Version', choices:['1.1', '1.2', '1.3'], description: '')
        booleanParam(name: 'executeTests', defaultValue: true, description: '')
    }
    stages {
        stage('Build') {
            steps {
                echo 'This step is building the app..!!'
            }
        }

        stage('Test') { 
            when {
                expression {
                    params.executeTests
                }
            }
            steps {
                echo 'Now i am running the test for app.'
                
            }
        }

        stage('Deploy') { 
            steps {
                echo 'Finally deploying the code.'
                echo "deploying version ${params.VERSION}"
    }
  }
 }
}