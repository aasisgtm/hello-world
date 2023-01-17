FROM public.ecr.aws/docker/library/openjdk:17-ea-14-alpine3.14
COPY . .
RUN ./gradlew clean build
RUN pwd && ls -la
COPY /build/libs/hello-world-0.1-all.jar helloworld.jar
EXPOSE 8080
CMD ["java", "-Dcom.sun.management.jmxremote", "-Xmx128m", "-XX:+IdleTuningGcOnIdle", "-Xtune:virtualized", "-jar", "helloworld.jar"]
