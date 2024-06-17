FROM openjdk:22-jdk

WORKDIR /app

COPY target/SpringBootRemoteDebug-0.0.1-SNAPSHOT.jar /app/springbootremotedebug.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "springbootremotedebug.jar"]