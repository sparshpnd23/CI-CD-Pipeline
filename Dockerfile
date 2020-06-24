FROM centos:latest
RUN yum install sudo -y
RUN yum install /sbin/service -y
RUN yum install httpd -y
COPY *.html /var/www/html
CMD /usr/sbin/httpd -DFOREGROUND && /bin/bash
EXPOSE 80
