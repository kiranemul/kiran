  FROM ubuntu:18.04
  RUN  apt-get update
  RUN  apt-get install -y apache2 curl net-tools
  ADD ./CarServ-Website-Template-Free-CSS.com.zip /var/www/html/
  ENTRYPOINT apachectl -D FOREGROUND
  EXPOSE 80
