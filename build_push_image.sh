# membuat Docker image dari Dockerfile, dengan nama image item-app, dan memiliki tag v1
docker build -t item-app:v1 .
# Melihat daftar image di lokal
docker images
# Mengubah nama image agar sesuai dengan format Docker Hub
docker tag item-app:v1 isalzufari/item-app:v1
# export dockerhub access_token
export ACCESS_TOKEN_DOCKER_HUB=dckr_pat_-sEjRLQvEwoSoAqiUVqH4xBeijQ
# login dockerhub
echo $ACCESS_TOKEN_DOCKER_HUB | docker login -u isalzufari --password-stdin
# push image to docker hub
docker push isalzufari/item-app:v1