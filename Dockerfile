# Pull base image 
From tomcat:8-jre8 
#FROM
#TO
#Author Sureddy Sreeni
# Maintainer 
MAINTAINER "sureddy.26@gmail.com" 
COPY ./webapp.war /usr/local/tomcat/webapps
