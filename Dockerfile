FROM jjanzic/docker-python3-opencv:contrib-opencv-3.3.0
MAINTAINER Wang Kun
WORKDIR /
RUN wget http://archive.apache.org/dist/zeppelin/zeppelin-0.7.2/zeppelin-0.7.2-bin-all.tgz \
	&& tar zxvf zeppelin-0.7.2-bin-all.tgz
RUN  mv /zeppelin-0.7.2-bin-all /zeppelin \
	&& rm /zeppelin-0.7.2-bin-all.tgz
RUN apt-get install -y openjdk-8-jdk
