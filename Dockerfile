FROM rockylinux:8
MAINTAINER hwain0w0

# yum 업데이트 및 apache, php 설치
RUN yum update && yum install -y httpd php

# php 연동
RUN cp -arp /etc/httpd/conf/httpd.conf /etc/httpd/conf/httpd.conf.ori
RUN sed -i 's/#ServerName www.example.com:80/ServerName localhost/g' /etc/httpd/conf/httpd.conf
RUN sed -i 's/DirectoryIndex index.html/DirectoryIndex index.html index.php index.jsp/g' /etc/httpd/conf/httpd.conf
RUN sed -i 's/#AddHandler cgi-script .cgi/AddHandler cgi-script .cgi/g' /etc/httpd/conf/httpd.conf
RUN sed -i '/AddType application\/x-gzip .tgz/a\ #PHP Enable' /etc/httpd/conf/httpd.conf
RUN sed -i '/\ #PHP Enable/a \ AddType application/x-httpd-php-source .phps' /etc/httpd/conf/httpd.conf
RUN sed -i '/\ #PHP Enable/a \ AddType application/x-httpd-php .php .jsp .html' /etc/httpd/conf/httpd.conf

# 공유할 볼륨 지정
VOLUME ["/var/www/html", "/etc/httpd"]

# 포워딩 할 포트 지정
EXPOSE 80 443

# Context 에서 index.html과 phpinfo 페이지 가져오기
ADD index.html /var/www/html
ADD phpinfo.php /var/www/html

# docker run 시 apache 시작
ENTRYPOINT ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
