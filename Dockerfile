FROM node:10.16.3-alpine

# Declare all ARGs
ARG APP
ARG BUILD
ARG BUILD_DESCRIPTION
ARG PORT
ARG RACK
ARG RELEASE
ARG SERVICE
ARG TEST1
ARG TEST222

# Echo all ARGs for testing
RUN echo "=== Convox Environment Variables ===" && \
    echo "APP: ${APP}" && \
    echo "BUILD: ${BUILD}" && \
    echo "BUILD_DESCRIPTION: ${BUILD_DESCRIPTION}" && \
    echo "PORT: ${PORT}" && \
    echo "RACK: ${RACK}" && \
    echo "RELEASE: ${RELEASE}" && \
    echo "SERVICE: ${SERVICE}" && \
    echo "=== Test Arguments ===" && \
    echo "TEST1: ${TEST1}" && \
    echo "TEST222: ${TEST222}" && \
    echo "==================================="

WORKDIR /usr/src/app

COPY . /usr/src/app

CMD ["node", "app.js"]