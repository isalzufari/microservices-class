# membuat Docker image dari Dockerfile, dengan nama image item-app, dan memiliki tag v1
docker build -t order-service:v1 .
# Mengubah nama image agar sesuai dengan format Docker Hub
docker tag order-service:v1 isalzufari/order-service:v1
# export dockerhub access_token
export ACCESS_TOKEN_DOCKER_HUB=dckr_pat_-sEjRLQvEwoSoAqiUVqH4xBeijQ
# login dockerhub
echo $ACCESS_TOKEN_DOCKER_HUB | docker login -u isalzufari --password-stdin
# push image to docker hub
docker push isalzufari/order-service:v1