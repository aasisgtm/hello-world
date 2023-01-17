FROM public.ecr.aws/amazoncorretto/amazoncorretto:19-al2-jdk
COPY build/libs/hello-world-*-all.jar helloworld.jar
EXPOSE 8080
CMD ["java", "-Dcom.sun.management.jmxremote", "-Xmx128m", "-XX:+IdleTuningGcOnIdle", "-Xtune:virtualized", "-jar", "helloworld.jar"]
