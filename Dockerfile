# OracleJDK 8 Docker image. This image is based on Alpine Linux image, which is only a 5MB image, and contains OracleJDK 8
#FROM frolvlad/alpine-oraclejdk8:slim
FROM websphere-liberty:webProfile7
VOLUME /tmp
ADD target/gs-spring-boot-docker-0.1.0.jar app.jar
RUN sh -c 'touch /app.jar'
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]
