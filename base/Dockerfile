FROM node:6

RUN apt-get update && apt-get install -y git apt-transport-https && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV NODE_ENV development
ENV APP_SECRET ""
ENV UI_HOST 127.0.0.1
ENV UI_PORT 3000
ENV API_HOST 127.0.0.1
ENV API_PORT 8080
ENV QUEUE_PROVIDER redis
ENV QUEUE_NAMESPACE DEV
ENV MONGODB_PATH mongodb://127.0.0.1:27017/learninglocker
ENV REDIS_HOST 127.0.0.1
ENV REDIS_PORT 6379
ENV REDIS_DB 0
ENV REDIS_PREFIX LEARNINGLOCKER

RUN git clone --branch v2.1.3 --depth 1 https://github.com/LearningLocker/learninglocker.git /etc/learning-locker

WORKDIR /etc/learning-locker

RUN yarn install

COPY .env .
