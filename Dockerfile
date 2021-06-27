FROM node:latest

EXPOSE 19000
EXPOSE 19001
EXPOSE 19006

ENV ADB_IP="192.168.112.101"
ENV REACT_PACKAGE_MANAGER_HOSTNAME="192.168.1.1"

RUN apt-get install && \
    apt-get install android-tools-adb

WORKDIR /app

COPY . ./

RUN YARN --network-timeout 100000

CMD adb connect ${ADB_IP} && \
    expo start