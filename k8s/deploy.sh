#!/bin/sh 

./build-and-push-image-prod.sh 
./use-cluster.sh 

kubectl delete -f deployment.yaml
kubectl apply -f deployment.yaml