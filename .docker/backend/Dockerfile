FROM node:16.11-buster

ARG BACKEND_OUTSIDE_PORT

#ENV BACKEND_OUTSIDE_PORT ${BACKEND_OUTSIDE_PORT}

WORKDIR /usr/src/app/

RUN mkdir /tmp/scripts;
COPY ./init /tmp/scripts
RUN chmod +x -R /tmp/scripts

EXPOSE ${BACKEND_OUTSIDE_PORT}
