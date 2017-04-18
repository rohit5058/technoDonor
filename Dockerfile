#FROM java:8 

# Install maven
#RUN apt-get clean && apt-get update --fix-missing && apt-get install -y maven
#RUN apt list --installed | grep ma
#RUN apt-get install -y -f maven

FROM maven:3-jdk-8

WORKDIR /code

# Prepare by downloading dependencies
ADD pom.xml /code/pom.xml
RUN ["mvn", "dependency:resolve"]
RUN ["mvn", "verify"]

# Adding source, compile and package into a fat jar
ADD src /code/src
RUN ["mvn", "package"]
	
EXPOSE 8081
CMD ["/usr/lib/jvm/java-8-openjdk-amd64/bin/java", "-jar", "target/sparkexample-jar-with-dependencies.jar"]
