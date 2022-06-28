FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install nginx -y
RUN apt-get install curl -y
RUN mkdir -p /var/www/my-app/tech
RUN rm -rf /var/www/html/index.nginx-debian.html
COPY ./app/index.html  /var/www/my-app/tech/
COPY ./my-app.conf /etc/nginx/sites-available/
RUN rm -f /etc/nginx/sites-enabled/*
RUN ln -s /etc/nginx/sites-available/my-app.conf /etc/nginx/sites-enabled/
EXPOSE 80:80
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
