FROM ubuntu:xenial
COPY repo /home
COPY install.sh /home
RUN sh /home/install.sh; rm /home/install.sh