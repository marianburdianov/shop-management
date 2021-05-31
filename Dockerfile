FROM openjdk:15
# Copy jar file
COPY target/*.jar  /opt/docker-jenkins-integration.jar
ADD wrapper.sh wrapper.sh
#RUN apk add --no-cache bash
RUN bash -c 'chmod +x /wrapper.sh'
ENTRYPOINT ["/bin/bash", "/wrapper.sh"]
