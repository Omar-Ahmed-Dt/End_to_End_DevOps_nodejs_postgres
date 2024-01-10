#!/bin/bash
cd k8s/
kubectl apply -n nodejs-app -f app.yml  database.yml
# install argocd in cluster
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/v2.10.0-rc1/manifests/install.yaml
# deploy argocd application  
kubectl apply -n argocd -f application.yaml 