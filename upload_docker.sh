#!/usr/bin/env bash
# This tags and uploads an image to Docker Hub

#Assumes this is built
#docker build --tag=flasksklearn .

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>

dockerpath="quincysting/project4"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login &&\
    docker image tag project4 $dockerpath

# Step 3:
# Push image to a docker repository
docker image push $dockerpath 