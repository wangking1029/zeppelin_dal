FROM jjanzic/docker-python3-opencv:contrib-opencv-3.3.0
MAINTAINER Wang Kun
WORKDIR /
RUN wget http://archive.apache.org/dist/zeppelin/zeppelin-0.7.2/zeppelin-0.7.2-bin-all.tgz \
	&& tar zxvf zeppelin-0.7.2-bin-all.tgz \
	&& mv /zeppelin-0.7.2-bin-all /zeppelin \
	&& rm /zeppelin-0.7.2-bin-all.tgz \
	&& rm /zeppelin/interpreter/jdbc/interpreter/jdbc/zeppelin-jdbc-*.jar \
	&& apt-get update \
	&& apt-get install -y python-software-properties \
		openjdk-8-jdk
COPY interpreter/jdbc/zeppelin-jdbc-0.7.2.jar /zeppelin/interpreter/jdbc
