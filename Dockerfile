FROM gradle:8.3.0-jdk17 AS build 
WORKDIR /workspace/app  
COPY . /workspace/app  
RUN gradle build 


FROM amazoncorretto:17
LABEL authors="KangShinGyu"

COPY --from=build /workspace/app/build/libs/my-app-0.0.1-SNAPSHOT.jar app.jar  

ENTRYPOINT ["java","-jar","/app.jar"]
