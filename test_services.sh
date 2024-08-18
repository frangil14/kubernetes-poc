#!/bin/bash

# Settings
HOST_NAME="finalproject"
PORT=80

curl --resolve "$HOST_NAME:$PORT:$( minikube ip )" -i http://$HOST_NAME/app-saludo
curl --resolve "$HOST_NAME:$PORT:$( minikube ip )" -i http://$HOST_NAME/app-saludo/en

curl --resolve "$HOST_NAME:$PORT:$( minikube ip )" -i http://$HOST_NAME/app-contador
curl --resolve "$HOST_NAME:$PORT:$( minikube ip )" -i http://$HOST_NAME/app-contador

curl --resolve "$HOST_NAME:$PORT:$( minikube ip )" -i http://$HOST_NAME/app-database
curl --resolve "$HOST_NAME:$PORT:$( minikube ip )" -i http://$HOST_NAME/app-database/users

curl --resolve "$HOST_NAME:$PORT:$( minikube ip )" -i http://$HOST_NAME/pod-list
