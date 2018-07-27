from ubuntu:16.04
maintainer ys.pass@outlook.com
label purpose="HandsOnLab"
run apt-get update
run apt-get install apache2 -y
workdir /var/www/html
run ["/bin/bash", "-c", "echo welcome to docker automated!!! >> test.html"]
expose 80
cmd ["apachectl", "-DFOREGROUND"]