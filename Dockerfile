FROM jjanzic/docker-python3-opencv:contrib-opencv-3.3.0
MAINTAINER Wang Kun
RUN	wget --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" \
		http://download.oracle.com/otn-pub/java/jdk/8u151-b12/e758a0de34e24606bca991d704f6dcbf/jdk-8u151-linux-x64.tar.gz \
	&& tar -xzf jdk-8u151-linux-x64.tar.gz \
	&& mv /jdk1.8.0_151 /java \
	&& wget http://archive.apache.org/dist/zeppelin/zeppelin-0.7.2/zeppelin-0.7.2-bin-all.tgz \
	&& tar -xzf zeppelin-0.7.2-bin-all.tgz \
	&& mv /zeppelin-0.7.2-bin-all /zeppelin \
	&& rm /zeppelin/interpreter/jdbc/zeppelin-jdbc-0.7.2.jar
COPY interpreter/jdbc/zeppelin-jdbc-0.7.2.jar /zeppelin/interpreter/jdbc
ENV JAVA_HOME /java
ENV PATH $JAVA_HOME/bin:$PATH
	
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
