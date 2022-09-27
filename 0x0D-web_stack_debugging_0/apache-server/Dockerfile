# Install ubuntu 16.04 int0 a container
FROM ubuntu:16.04

# Install apache server
RUN apt-get update 
RUN apt-get install -y apache2 
RUN apt-get install -y apache2-utils 
RUN apt-get clean

# Copy index.html file from host os to docker container
COPY index.html /var/www/html/

# Run the server on port 80
EXPOSE 80

# Run te server after set up
CMD ["apache2ctl", "-D", "FOREGROUND"]