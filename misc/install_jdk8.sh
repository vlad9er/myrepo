#!/bin/bash
rm -rf /usr/java

wget --no-cookies \
--no-check-certificate \
--header "Cookie: oraclelicense=accept-securebackup-cookie" \
http://download.oracle.com/otn-pub/java/jdk/8u161-b12/2f38c3b165be4555a1fa6e98c45e0808/jdk-8u161-linux-x64.tar.gz \
-O /opt/jdk-8-linux-x64.tar.gz
cd /opt && tar zxf jdk-8-linux-x64.tar.gz && mkdir /usr/java/ && mv /opt/jdk1.8.0_161 /usr/java && rm /opt/jdk-8-linux-x64.tar.gz
#Update alternatives section
update-alternatives --install /usr/bin/java java /usr/java/jdk1.8.0_161/jre/bin/java 20000
update-alternatives --install /usr/bin/jar jar /usr/java/jdk1.8.0_161/bin/jar 20000
update-alternatives --install /usr/bin/javac javac /usr/java/jdk1.8.0_161/bin/javac 20000
update-alternatives --install /usr/bin/javaws javaws /usr/java/jdk1.8.0_161/jre/bin/javaws 20000
update-alternatives --set java /usr/java/jdk1.8.0_161/jre/bin/java
update-alternatives --set javaws /usr/java/jdk1.8.0_161/jre/bin/javaws
update-alternatives --set javac /usr/java/jdk1.8.0_161/bin/javac
update-alternatives --set jar /usr/java/jdk1.8.0_161/bin/jar
#check version
java -version
