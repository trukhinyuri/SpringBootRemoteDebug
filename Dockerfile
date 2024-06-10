FROM openjdk:22-jdk

WORKDIR /app

COPY target/SpringBootRemoteDebug-0.0.1-SNAPSHOT.jar /app/springbootremotedebug.jar

ENV JAVA_TOOL_OPTIONS="-Xdebug -agentlib:jdwp=transport=dt_socket,address=0.0.0.0:5005,server=y,suspend=n"

EXPOSE 8080 5005

ENTRYPOINT ["java", "-jar", "springbootremotedebug.jar"]