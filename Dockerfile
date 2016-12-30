FROM resin/rpi-raspbian:jessie-20160831  
RUN apt-get update && \  
    apt-get -qy install curl \
                build-essential  \
                ca-certificates
WORKDIR /root/  
RUN curl -O \  
  https://nodejs.org/dist/v4.5.0/node-v4.5.0-linux-armv6l.tar.gz
RUN tar -xvf node-*.tar.gz -C /usr/local \  
  --strip-components=1
RUN rm node-v4.5.0*.gz
RUN npm install npm@latest -g
CMD ["node"]  
