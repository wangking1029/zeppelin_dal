FROM janza/docker-python3-opencv
MAINTAINER Wang Kun
WORKDIR /
RUN wget http://archive.apache.org/dist/zeppelin/zeppelin-0.7.2/zeppelin-0.7.2-bin-all.tgz \
	tar zxvf zeppelin-0.7.2-bin-all.tgz
