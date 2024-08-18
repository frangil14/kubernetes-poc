# kubernetes-poc

PoC of Kubernetes cluster with some services

---

Init Kubernetes cluster

```
/setup_minikube.sh
```

Testing the services

```
curl --resolve "finalproject:80:$( minikube ip )" -i http://finalproject/app-saludo
```

Util commands

```
# UI to see cluster status
minikube dashboard
# build final yaml to apply
helm template test . >toApply.yaml
# apply manifiesto
kubectl apply -f toApply.yaml
# access to service from browser
kubectl port-forward service/pod-list-service 9091:80 -n final-project
```
