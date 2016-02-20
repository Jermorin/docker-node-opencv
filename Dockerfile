FROM node:latest

MAINTAINER Jérémy Morin <hi@jermor.in>

ENV OPENCV_VERSION 2.4.12.3

COPY opencv.sh /opencv.sh
RUN bash /opencv.sh \
	&& rm /opencv.sh

ENV LD_LIBRARY_PATH /usr/local/lib

CMD ["node"]
