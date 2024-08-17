# kubernetes-poc

PoC of Kubernetes cluster with some services

For init Kubernetes cluster:

```
/setup_minikube.sh
```

Testing the services:

```
curl --resolve "finalproject:80:$( minikube ip )" -i http://finalproject/app-saludo
```
