FROM amazoncorretto:17
LABEL authors="KangShinGyu"
ARG JAR_FILE=build/libs/easylog-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]