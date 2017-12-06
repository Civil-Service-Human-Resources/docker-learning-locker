FROM cshr/learning-locker-base:latest

CMD [ "node", "ui/dist/server" ]

EXPOSE 3000

RUN yarn build-ui-server
RUN yarn build-ui-client
