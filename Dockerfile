FROM adoptopenjdk/openjdk14:alpine-slim
COPY target/eks-kinesis-example-0.0.1-SNAPSHOT.jar eks-kinesis-example.jar
EXPOSE 8080
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom", "-jar", "eks-kinesis-example.jar"]