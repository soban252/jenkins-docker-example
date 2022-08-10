FROM openjdk
COPY target/*.jar /
jar cmvf META-INF/MANIFEST.MF my-app-1.0-SNAPSHOT.jarjar 
EXPOSE 8080
ENTRYPOINT ["java","-jar","/my-app-1.0-SNAPSHOT.jar"]
