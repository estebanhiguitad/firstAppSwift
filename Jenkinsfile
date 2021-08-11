pipeline{
    agent any
    
    stages{
        stage('Build'){
            steps{
                echo "------------>Compile & Unit Tests<------------"
                sh 'xcodebuild -scheme firstAppSwift clean build CODE_SIGNING_REQUIRED=NO CODE_SIGNING_ALLOWED="NO"'
            }
            
        }
        
        stage('Static Code Analysis'){
            steps{
                withEnv(['PATH+EXTRA=/usr/sbin:/usr/bin:/sbin:/bin']) {
                    withSonarQubeEnv('Sonar') {
                        sh "sonar-scanner -Dproject.settings=sonar-project.properties"
                    }
                }
            }
        }
    }
    
}
