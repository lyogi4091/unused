FROM ubuntu:latest
MAINTAINER lingojuyogesh.kumar@ltts.com
RUN apt-get update && apt-get install -y \
        gcc \
        python3.7 \
        python3-pip
RUN apt-get update
RUN pip3 install pep8 &&\
        pip3 install --upgrade pep8 &&\
        pip3 install autopep8 &&\
        pip3 install --upgrade autopep8
