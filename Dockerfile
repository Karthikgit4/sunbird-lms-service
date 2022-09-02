FROM adoptopenjdk/openjdk11:alpine-slim
MAINTAINER "Manojv" "manojv@ilimi.in"
RUN mkdir -p /home/sunbird/learner
COPY ./controller/target/learning-service-1.0-SNAPSHOT.jar /home/sunbird/learner/
WORKDIR /home/sunbird/learner/
CMD java -jar  /home/sunbird/learner/learning-service-1.0-SNAPSHOT.jar

