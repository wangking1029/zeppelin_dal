FROM jjanzic/docker-python3-opencv:contrib-opencv-3.3.0
MAINTAINER Wang Kun
RUN \
	echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections \
	&& apt-get update \
	&& apt-get install -y software-properties-common
#	add-apt-repository -y ppa:webupd8team/java && \
#	apt-get update && \
#	apt-get install -y oracle-java8-installer && \
#	rm -rf /var/lib/apt/lists/* && \
#	rm -rf /var/cache/oracle-jdk8-installer
#WORKDIR /
#RUN  apt-get install -y python-software-properties debconf-utils \
#	&& add-apt-repository -y ppa:webupd8team/java \
#	&& apt-get update \
#	&& echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | debconf-set-selections \
#	&& apt-get install -y oracle-java8-installer
#RUN wget http://archive.apache.org/dist/zeppelin/zeppelin-0.7.2/zeppelin-0.7.2-bin-all.tgz \
#	&& tar zxvf zeppelin-0.7.2-bin-all.tgz \
#	&& mv /zeppelin-0.7.2-bin-all /zeppelin \
#	&& rm /zeppelin-0.7.2-bin-all.tgz \
#	&& rm /zeppelin/interpreter/jdbc/zeppelin-jdbc-0.7.2.jar \
#	&& apt-get install -y python-software-properties \
#	&& add-apt-repository ppa:webupd8team/java \
#	&& apt-get update \
#	&& apt-get install -y openjdk-8-jdk \
#	&& pip3 install tensorflow \
#			selectivesearch \
#			matplotlib \
#			mahotas
#COPY interpreter/jdbc/zeppelin-jdbc-0.7.2.jar /zeppelin/interpreter/jdbc
