FROM node:6

RUN apt-get update && apt-get install -y git apt-transport-https && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD [ "node", "dist/server.js" ]

EXPOSE 8081

ENV NODE_ENV development
ENV EXPRESS_PORT 8081
ENV MONGO_URL mongodb://127.0.0.1:27017/learninglocker
ENV REDIS_URL redis://127.0.0.1:6379/0
ENV REDIS_PREFIX LEARNINGLOCKER
ENV STORAGE_REPO local

RUN git clone https://github.com/LearningLocker/xapi-service.git /etc/xapi-service

WORKDIR /etc/xapi-service

RUN npm install
RUN npm run build

COPY .env .
