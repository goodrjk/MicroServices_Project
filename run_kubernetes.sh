#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=goodrjk/xyz

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment xyz --image=goodrjk/xyz port=80
kubectl run xyz --image=goodrjk/xyz port=80

# Step 3:
# List kubernetes pods
kubectl get pods --all-namespaces

# Step 4:
# Forward the container port to a host
kubectl expose deployment xyz --type="NodePort" --port=80
kubectl expose deployment xyz --type=LoadBalancer --name=xyz-service --port=80 --target=port=80

sleep 180
kubectl port-forward deployment/xyz 8000:80
kubectl logs --selector app=xyz



Mentor 1

dockerpath=<dockerhub_accountId/image>
# Step 2
# Run a Docker Hub container with kubernetes
kubectl run <ANY_CONTAINER_NAME_OF_YOUR_CHOICE>\
    --image=$dockerpath\
    --port=<APP_PORT>
# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to host
kubectl port-forward <ANY_CONTAINER_NAME_OF_YOUR_CHOICE> <HOST_PORT>:<APP_PORT>

Mentor 2

# Step 1:
# This is your Docker ID/path
dockerpath=MY_ENV/MY_PATH
# Step 2
# Run the Docker Hub container with kubernetes
kubectl run CONTAINER --image=dockerpath --port=MY_PORT
# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host
kubectl expose deployment CONTAINER --type=LoadBalancer --port=MY_PORT_ --target-port=MY_PORT
