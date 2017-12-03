#!/bin/bash

echo running flow-service
docker rm -f flow || true 
docker run --rm  -d -p 8081:8081 \
       -e DB_URL=inmem: \
       -e API_URL="http://$DOCKER_LOCALHOST:8080/r" \
       --name flow \
       fnproject/flow:latest-2017-12-02-2325Z


echo running flow ui
docker rm -f flowui || true 
docker run --name flowui --rm   -p3000:3000 -e API_URL=http://$DOCKER_LOCALHOST:8080 -d -e COMPLETER_BASE_URL=http://$DOCKER_LOCALHOST:8081 fnproject/flow:ui-2017-12-02-2325Z

echo open http://localhost:3000 for the flow UI
