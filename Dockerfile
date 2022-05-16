#FROM gradle:7.4.1-jdk11 AS build
#
#COPY --chown=gradle:gradle . /home/gradle/src/producer
#WORKDIR /home/gradle/src/producer
#RUN gradle clean build docker --no-daemon --stacktrace

FROM openjdk:11.0.15

RUN mkdir -p /usr/app

# web server port
EXPOSE 8080

#COPY --from=build /home/gradle/src/producer/build/ /usr/app

# Copy files
ARG DEPENDENCY=build/dependency
COPY ${DEPENDENCY}/BOOT-INF/lib /usr/app/lib
COPY ${DEPENDENCY}/META-INF /usr/app/META-INF
COPY ${DEPENDENCY}/BOOT-INF/classes /usr/app

# entrypoint
ENTRYPOINT ["java","-cp","usr/app:usr/app/lib/*","com.tinybeans.backend.evaluation.EvaluationApplication"]
