# build

Building is done inside the container, so just run `make build`

I know its not scratch but I'm in a rush sorry :-)


The Makefile also takes care of tagging and push


Docker image can be found @
https://hub.docker.com/r/starkers/hello/tags/

# k8s

the service is binding to a NodePort (minikube). after starting a minikube see `manifests/`

# Getting access to the URL

```
curl -v "$(minikube service hello --url)"
```

(this works on linux at least YMMV)  -david
