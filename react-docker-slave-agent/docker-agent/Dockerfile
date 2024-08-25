# Start with a base image that has Java installed
FROM openjdk:11-jre-slim

# Set the working directory inside the container
WORKDIR /var/jenkins_home/

# Install curl
RUN apt-get update && apt-get install -y curl git docker.io

# Download agent.jar
RUN curl -sO http://host.docker.internal:8080/jnlpJars/agent.jar | sh

# Set the entry point to run the Java command
ENTRYPOINT ["java", "-jar", "agent.jar"]

# Default command to run the Java agent
CMD ["-url", "http://host.docker.internal:8080/", "-secret", "f0ac0ec18cb75eba036ddf57d3ac852af4bb8fc86f14d4cd228aacad00df3f57", "-name", "react-agent", "-workDir", "/var/jenkins_home/"]