FROM node:6

RUN apt-get update && apt-get install -y git apt-transport-https && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN git clone https://github.com/LearningLocker/learninglocker.git /etc/learning-locker

WORKDIR /etc/learning-locker

RUN yarn install

COPY .env .
