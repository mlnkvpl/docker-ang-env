FROM node:14.15-buster

ARG ANGULAR_OUTSIDE_PORT
ARG ANGULAR_VERSION

WORKDIR /usr/src/app

RUN mkdir /tmp/scripts;
COPY ./init/init.sh /tmp/scripts
RUN chmod +x -R /tmp/scripts

RUN npm install -g @angular/cli@${ANGULAR_VERSION}

EXPOSE ${ANGULAR_OUTSIDE_PORT}