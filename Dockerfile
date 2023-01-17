FROM public.ecr.aws/amazoncorretto/amazoncorretto:19-al2-jdk
COPY . .
RUN ./gradlew clean build
COPY ./build/libs/hello-world-0.1-all.jar helloworld.jar
EXPOSE 8080
CMD ["java", "-Dcom.sun.management.jmxremote", "-Xmx128m", "-XX:+IdleTuningGcOnIdle", "-Xtune:virtualized", "-jar", "helloworld.jar"]
