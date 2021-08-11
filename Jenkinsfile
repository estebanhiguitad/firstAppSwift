pipeline{
    agent any
    
    stage('Build'){
        echo "------------>Compile & Unit Tests<------------"
        sh 'xcodebuild -scheme "Integracion\ Continua" clean build CODE_SIGNING_REQUIRED=NO CODE_SIGNING_ALLOWED="NO"'
    }
    
    stage('Static Code Analysis'){
        withEnv(['PATH+EXTRA=/usr/sbin:/usr/bin:/sbin:/bin']) {
            withSonarQubeEnv('Sonar') {
                sh "sonar-scanner -Dproject.settings=sonar-project.properties"
            }
        }
    }
}
