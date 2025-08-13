FROM node:10.16.3-alpine

# Declare all ARGs
ARG BUILD_APP
ARG BUILD_AUTH
ARG BUILD_DEVELOPMENT
ARG BUILD_GENERATION
ARG BUILD_ID
ARG BUILD_MANIFEST
ARG BUILD_RACK
ARG BUILD_URL
ARG BUILD_GIT_SHA
ARG BUILDKIT_ENABLED
ARG TEST1
ARG TEST222

# Echo all ARGs for testing
RUN echo "=== Convox Build Arguments ===" && \
    echo "BUILD_APP: ${BUILD_APP}" && \
    echo "BUILD_AUTH: ${BUILD_AUTH}" && \
    echo "BUILD_DEVELOPMENT: ${BUILD_DEVELOPMENT}" && \
    echo "BUILD_GENERATION: ${BUILD_GENERATION}" && \
    echo "BUILD_ID: ${BUILD_ID}" && \
    echo "BUILD_MANIFEST: ${BUILD_MANIFEST}" && \
    echo "BUILD_RACK: ${BUILD_RACK}" && \
    echo "BUILD_URL: ${BUILD_URL}" && \
    echo "BUILD_GIT_SHA: ${BUILD_GIT_SHA}" && \
    echo "BUILDKIT_ENABLED: ${BUILDKIT_ENABLED}" && \
    echo "=== Test Arguments ===" && \
    echo "TEST1: ${TEST1}" && \
    echo "TEST222: ${TEST222}" && \
    echo "==================================="
    
WORKDIR /usr/src/app

COPY . /usr/src/app

CMD ["node", "app.js"]