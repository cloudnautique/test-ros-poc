#!/bin/sh

if [ -n "${REG_DOCKER_USER}" ] && [ -n "${REG_DOCKER_PASSWORD}" ] && [ -n "${REG_DOCKER_EMAIL}" ]; then
    docker login -u ${REG_DOCKER_USER} -p ${REG_DOCKER_PASSWORD} -e ${REG_DOCKER_EMAIL} ${REG_DOCKER_REGISTRY}
fi

if [ -n "${ORIGINAL}" ] && [ -n "${TARGET_TAG}" ]; then
    echo "Pulling and tagging"
    docker pull "${ORIGINAL}" && docker tag "${ORIGINAL}" "${TARGET_TAG}"
fi

exec "$@"
