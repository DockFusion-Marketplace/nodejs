ARG NODEJS_VERSION=lts

FROM node:${NODEJS_VERSION}

# Add example app
ADD exampleApp/ /home/node/exampleApp/

WORKDIR /home/node/app
EXPOSE 3000

# Setup entrypoint
ADD install.sh /usr/local/bin/install.sh
RUN chmod +x /usr/local/bin/install.sh
ENTRYPOINT [ "install.sh" ]

CMD [ "sh", "-c", "npm run start || sleep infinity" ]