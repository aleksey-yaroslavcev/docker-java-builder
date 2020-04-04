FROM debian:buster
MAINTAINER Aleksey Yaroslavcev <a.yaroslavcev@gmail.com>

#Update repo
RUN apt-get update

#Install dependencies
RUN apt-get install -y ant maven mc git nano sudo openssh-server

RUN mkdir /root/.m2

RUN ln -s /BUILDDIR/settings.xml /root/.m2/settings.xml

RUN ln -s /MAVENREPO /root/.m2/repository

RUN echo "JAVA_HOME=/JDK/current" >> /etc/environment
