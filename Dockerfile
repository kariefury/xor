FROM ubuntu:18.04

LABEL maintainer="Carrie <carrie@skyberrys.com>"

# Install updates to base image
RUN \
  apt-get update -y \
  && apt-get install -y
RUN yes Y | apt install sudo -y
RUN yes Y | apt-get install ngspice -y
RUN apt-get install git -y
RUN apt-get install nano -y
RUN apt-get update -y \
  && apt-get install gnuplot -y
RUN apt install xterm -y
RUN git clone https://github.com/kariefury/xor
