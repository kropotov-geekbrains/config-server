FROM openjdk:11.0.10-jdk
ENV PROPS_REPO=/tmp/config-settings
WORKDIR /tmp
ARG JAR_FILE
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","app.jar"]