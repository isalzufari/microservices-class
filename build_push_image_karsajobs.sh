#!/bin/sh
#build Docker image dari berkas Dockerfile yang disediakan dengan nama karsajobs:latest
docker build -t karsajobs:latest .

#mengubah nama image agar sesuai dengan format docker hub
docker tag karsajobs:latest isalzufari/karsajobs:latest

# export dockerhub access_token
export ACCESS_TOKEN_DOCKER_HUB=dckr_pat_-sEjRLQvEwoSoAqiUVqH4xBeijQ

# login dockherhub
echo $ACCESS_TOKEN_DOCKER_HUB | docker login -u isalzufari --password-stdin

# push image to docker hub
docker push isalzufari/karsajobs:latest