FROM docker:stable-dind

ENV HOME /home/jenkins
RUN addgroup -S -g 9999 jenkins
RUN adduser -S -u 9999 -h $HOME -G jenkins jenkins
LABEL Description="JNLP jenkins agent" Vendor="Us" Version="1.0"

ARG VERSION=3.19
ARG AGENT_WORKDIR=/home/jenkins/agent

RUN apk add --update --no-cache sudo openjdk8 curl bash git openssh-client openssl \
  && curl --create-dirs -sSLo /usr/share/jenkins/slave.jar https://repo.jenkins-ci.org/public/org/jenkins-ci/main/remoting/${VERSION}/remoting-${VERSION}.jar \
  && chmod 755 /usr/share/jenkins \
  && chmod 644 /usr/share/jenkins/slave.jar \
  && apk del curl

COPY sudoers /etc/sudoers
COPY daemon.json /etc/docker/daemon.json
RUN chmod 440 /etc/sudoers

USER jenkins
ENV AGENT_WORKDIR=${AGENT_WORKDIR}
RUN mkdir /home/jenkins/.jenkins && mkdir /home/jenkins/.m2 && mkdir -p ${AGENT_WORKDIR}

#RUN adduser jenkins sudo

COPY jenkins-slave /jenkins-slave
COPY settings.xml /home/jenkins/.m2/settings.xml

WORKDIR /home/jenkins


ENTRYPOINT ["bash", "/jenkins-slave"]
