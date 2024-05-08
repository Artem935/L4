FROM ubuntu:latest

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y apache2

COPY index.html /var/www/html/

EXPOSE 8080

LABEL maintainer="Zharkov artemzharkov10@gmail.com"

CMD ["apache2ctl", "-D", "FOREGROUND"]