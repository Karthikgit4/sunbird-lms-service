FROM adoptopenjdk/openjdk11:alpine-slim
MAINTAINER "Manojv" "manojv@ilimi.in"
RUN mkdir -p /home/sunbird/learner
ADD ./controller/target/learning-service-1.0-SNAPSHOT.jar /home/sunbird/learner/
CMD java -jar -XX:+PrintFlagsFinal $JAVA_OPTIONS -Dplay.server.http.idleTimeout=180s -Dlog4j2.formatMsgNoLookups=true -cp '/home/sunbird/learner/learning-service-1.0-SNAPSHOT.jar/lib/*' play.core.server.ProdServerStart  /home/sunbird/learner/learning-service-1.0-SNAPSHOT.jar

