FROM ubuntu
RUN apt-get update
RUN apt-get install apache2 -y
WORKDIR /var/www/html/
COPY index.html .
CMD ["apache2ctl", "-D", "FOREGROUND"]
