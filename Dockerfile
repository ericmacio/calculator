FROM frolvlad/apline-oraclejdk8:slim
COPY build/lib/calculator-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]