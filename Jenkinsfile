// This is my pipeline ## 5456465
pipeline {
    agent any

        stages {
		stage('Build') {
         		steps {
            			// Get some code from a GitHub repository
           			git 'https://github.com/VIJAY-CH/MavenPipeline.git'

            			// Run Maven on a Unix agent.
            			sh "mvn -Dmaven.test.failure.ignore=true clean package"

            			// To run Maven on a Windows agent, use
            			// bat "mvn -Dmaven.test.failure.ignore=true clean package"
         		}
           	//stage ('Build') {
           		// steps {
                		//sh 'mvn clean install package' 
            		//}
        	// }
			
		}
			
	stage('Deploy'){
         steps(['tomcat-dev']) {
         sh 'sshpass -p devops scp -o StrictHostKeyChecking=no webapp/target/*.war devops@35.192.53.22:/usr/local/tomcat9/webapps'
      }
   }
    }
}
