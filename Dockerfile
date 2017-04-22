#FROM java:8 

# Install maven
#RUN apt-get clean && apt-get update --fix-missing && apt-get install -y maven
#RUN apt list --installed | grep ma
#RUN apt-get install -y -f maven

FROM maven:3-jdk-8

WORKDIR /technoDonor

# Prepare by downloading dependencies
ADD pom.xml /technoDonor/pom.xml
#RUN ["mvn", "dependency:resolve"]
#RUN ["mvn", "verify"]

# Adding source, compile and package into a fat jar
ADD src /technoDonor/src
RUN ["mvn", "package"]
	
#EXPOSE 8081
CMD ["/usr/lib/jvm/java-8-openjdk-amd64/bin/java", "-jar", "target/Donor-0.0.1.war"]
