## k3d cluster create mycluster

## TODO: Docker build and push
docker build -t sergey82/golang:latest .
docker push sergey82/golang:latest
## TODO: Deploy k8s manifests
helm upgrade --install app ./Chart-test --namespace myns --create-namespace