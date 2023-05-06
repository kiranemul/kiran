  FROM ubuntu:18.04
  RUN  apt-get update
  RUN  apt-get install -y apache2 curl net-tools
  ADD ./CarServ-Website-Template-Free-CSS.com.zip /var/www/html/
  RUN apt-get isntall unzip -y 
  RUN unzip /var/www/html/CarServ-Website-Template-Free-CSS.com.zip /var/www/html/
  RUN cp -r  /var/www/html/car-repair-html-template/* /var/www/html/
  ENTRYPOINT apachectl -D FOREGROUND
  EXPOSE 80
