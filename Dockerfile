FROM openjdk:17-jdk-slim
RUN apt-get update && apt-get install -y curl
VOLUME /tmp
EXPOSE 8080
ADD target/client-aws-deploy.jar client-aws-deploy.jar
ENTRYPOINT ["java","-jar","/client-aws-deploy.jar"]
