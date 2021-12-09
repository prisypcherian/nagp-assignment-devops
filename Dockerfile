FROM openjdk:8-jdk-alpine
COPY ./target/nagp-java-service.jar /deploymentpath
WORKDIR /deploymentpath
RUN sh -c 'touch nagp-java-service.jar'
CMD ["java","-jar", "nagp-java-service.jar"]