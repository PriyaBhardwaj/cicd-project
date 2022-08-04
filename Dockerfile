FROM centos:7.9.2009
MAINTAINER b.piya16@gmail.com
RUN yum install -y httpd \
 zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page276/petlover.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip petlover.zip
RUN cp -rvf pet-care-website-template/* .
RUN rm -rf pet-care-website-template/ petlover.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
