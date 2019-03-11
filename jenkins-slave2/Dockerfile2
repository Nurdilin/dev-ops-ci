FROM ubuntu:18.04
MAINTAINER Theofanis Deligiannis

USER root

RUN adduser jenkins
RUN echo "jenkins:my_pass" | chpasswd

USER jenkins

RUN apt-get update
RUN apt-get -y upgrade

#installation of needed packages

RUN apt-get install -y git
RUN apt-get install -y curl
RUN apt-get install -y openssh-server
RUN apt-get install -y openssh-client
RUN apt-get install -y maven

RUN mkdir -p /var/run/sshd

#installation of Java (JDK 8)
RUN apt-get install openjdk8


#configure maven
RUN mkdir -p /home/jenkins/.m2
#copy setting.xml from the Dockerfile level
COPY settings.xml /home/jenkins/.m2/
RUN chown -R jenkins:jenkins /home/jenkins/.m2/ 

#open port 22 for ssh
EXPOSE 22
#start ssh daemon
CMD ["/user/sbin/ssd","D"]
