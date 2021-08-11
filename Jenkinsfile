pipeline{
    agent any
    
    stages{
        stage('Build'){
            steps{
                echo "------------>Compile & Unit Tests<------------"
                withEnv(['PATH+EXTRA=/usr/sbin:/usr/bin:/sbin:/bin']) { 
                    sh 'xcodebuild -scheme firstAppSwift clean build CODE_SIGNING_REQUIRED=NO CODE_SIGNING_ALLOWED="NO"'
                }
                
            }
            
        }

        stage('Swiftlint analysis'){
            steps{
                echo "------------>Swiftlint analysis<------------"
                environment { 
                    PLUS_PATH = "/usr/sbin:/usr/bin:/sbin:/bin:/opt/swiftlint" 
                }
                withEnv(['PATH+EXTRA=$PLUS_PATH']) {
                    sh "swiftlint lint > sonar-reports/swiftlint.txt"
                }
            }
        }
        
        stage('Static Code Analysis'){
            steps{
                echo "------------>Static Code Analysis<------------"
                withEnv(['PATH+EXTRA=/usr/sbin:/usr/bin:/sbin:/bin']) {

                    withSonarQubeEnv('Sonar') {
                        sh "sonar-scanner -Dproject.settings=sonar-project.properties"
                    }
                }
            }
        }
    }
    
}
