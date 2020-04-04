pipeline {
    agent any


        stages {
           stage ('Build') {
            steps {
                sh 'mvn clean install package' 
            }
         }
		stage('Deploy to Tomcat'){
         steps(['tomcat-dev']) {
         sh 'scp -o StrictHostKeyChecking=no webapp/target/*.war root@10.128.0.38:/opt/tomcat/tomcat/webapps/'
      }
   }
    }
}
