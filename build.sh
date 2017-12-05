#!/usr/bin/env bash

PREFIX=learning-locker-
ORGANISATION="cautionyourblast"
IMAGES=( "base" "api-server" "api-worker" "ui" "cli" "xapi" )

function build {
    IMAGE=$1
    echo "Building ${ORGANISATION}/${PREFIX}${IMAGE}"
    docker build -t ${ORGANISATION}/${PREFIX}${IMAGE} ${IMAGE}/.
}

for image in "${IMAGES[@]}"
do
    build ${image}
done

echo "All builds complete"
