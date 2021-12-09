# nagp-assignment-run the source code
NAGP DEVOPS ASSIGNMENT

Run as Maven Project with Test Cases
Run the pom using the command -  mvn clean install

Run the maven build project (jar) as Docker Container
docker -c 'touch nagp-java-service.jar'

# nagp-assignment-Trigger the Build from Jenkins
1. Commit the code to the repository - https://github.com/prisypcherian/nagp-assignment-devops.git
2. Jenkins to be configured with the above GIT  URL - Click Build from the Jenkins Dashboard.
3. Pipeline is executed  - build and deploy the Docker Container
