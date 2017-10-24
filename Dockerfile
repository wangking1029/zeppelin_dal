FROM registry.houbank.net/library/java:8-jre
MAINTAINER Wang Kun
RUN apt-get update \
	&& apt-get install -y python2.7 
RUN apt-get install -y python-pip python-dev build-essential

