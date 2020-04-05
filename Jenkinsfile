pipeline {
    agent any

        stages {
           stage ('Build') {
            steps {
                sh 'mvn clean install package' 
            }
         }
		stage('Deploy'){
         steps(['tomcat-dev']) {
         sh 'sshpass -p devops scp -o StrictHostKeyChecking=no webapp/target/*.war devops@35.192.53.22:/usr/local/tomcat9/webapps'
      }
   }
    }
}
