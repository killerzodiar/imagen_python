FROM ubuntu
RUN apt-get update
RUN apt-get install -y python
RUN echo 1.0 >> /etc/version
RUN apt-get install git -y
RUN apt-get install iputils-ping -y
###WORKDIR###
RUN mkdir /datos
WORKDIR /datos
RUN touch f.txt
RUN mkdir /datos1
WORKDIR /datos1
RUN touch f2.txt
###COPY###
#COPY index.html .
#COPY app.log /datos
###ADD###
#ADD docs docs
#ADD f* ./
#ADD t.tar .
###ENV###
ENV dir=/data dir1=/data1
RUN mkdir $dir && mkdir $dir1
###ARG###
#ARG dir2
#RUN mkdir $dir2
###EXPOSE###
RUN apt-get install -y apache2
EXPOSE 80
#ADD entrypoint.sh /datos1
###CMD###
#CMD /datos1/entrypoint.sh
###VOLUME###
ADD paginas /var/www/html
VOLUME ["/var/www/html"]







