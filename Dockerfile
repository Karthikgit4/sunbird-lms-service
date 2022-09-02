FROM adoptopenjdk/openjdk11:alpine-slim
MAINTAINER "Manojv" "manojv@ilimi.in"
CMD java -jar ./controller/target/learning-service-1.0-SNAPSHOT.jar


