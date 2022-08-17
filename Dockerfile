FROM adoptopenjdk/openjdk11:alpine-slim
MAINTAINER "Manojv" "manojv@ilimi.in"
RUN apk update
RUN apk add  unzip
RUN apk add curl
RUN mkdir -p /home/sunbird/learner
COPY ./controller/target/learning-service-1.0-SNAPSHOT.jar /home/sunbird/learner/
RUN jar xvf ./controller/target/learning-service-1.0-SNAPSHOT.jar -d /home/sunbird/learner/
WORKDIR /home/sunbird/learner/
CMD java -XX:+PrintFlagsFinal $JAVA_OPTIONS -Dplay.server.http.idleTimeout=180s -Dlog4j2.formatMsgNoLookups=true -cp '/home/sunbird/learner/learning-service-1.0-SNAPSHOT/lib/*' play.core.server.ProdServerStart  /home/sunbird/learner/learning-service-1.0-SNAPSHOT

