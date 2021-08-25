FROM centos

MAINTAINER rahul
RUN yum -y update
RUN yum install -y httpd
EXPOSE 80
COPY index.html /var/www/html
ENTRYPOINT ["/usr/sbin/httpd","-D","FOREGROUND"]



