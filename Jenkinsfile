node {	
        def mvnHome = tool name: 'Maven Path', type: 'maven'
        dir('../workspace@script/nagp-java-service') {
                def branchName = sh(returnStdout: true, script: 'git rev-parse --abbrev-ref HEAD').trim()
                // Build Project with Test Cases using maven
                stage('Run Test Cases') {
                    sh 'mvn clean install nagp-java-service'
                }
                // Build the docker images
                stage('Build Docker Image') {
                    sh 'docker-compose build nagp-java-service'
                }
                // Deploy the container in docker
                stage('Deploy') {
                    sh 'docker-compose up -d nagp-java-service'
                    sh 'docker image prune -f || true'
                }
            }
}