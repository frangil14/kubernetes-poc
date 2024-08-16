#!/bin/bash

# Settings
KUBERNETES_VERSION="v1.30.0"
NUM_NODES=2
NUM_CPUS=2
MEMORY=1900

# Init Minikube
minikube start --kubernetes-version=$KUBERNETES_VERSION --cpus=$NUM_CPUS --memory=$MEMORY --nodes=$NUM_NODES

sleep 10

# Tag nodes
kubectl taint node minikube disk=ssh
kubectl label node minikube-m02 node-role.kubernetes.io/worker=worker
#kubectl label node minikube-m03 node-role.kubernetes.io/worker=worker

# Enable Ingress
minikube addons enable ingress

echo "Nodes and labels:"
kubectl get nodes
