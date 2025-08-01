#!/bin/bash
set -e

NAMESPACE="cnas-crud-php"

echo "[INFO] Deleting CNAS Deployments and Services..."

# Delete Deployments
kubectl delete namespace $NAMESPACE

echo "[INFO] Applying updated manifests..."

kubectl delete namespace $NAMESPACE || true

kubectl apply -f charts/templates/mysql-secret.yaml -n $NAMESPACE
kubectl apply -f charts/templates/mysql-init.yaml -n $NAMESPACE
kubectl apply -f charts/templates/mysql-deployment.yaml -n $NAMESPACE
kubectl apply -f charts/templates/mysql-service.yaml -n $NAMESPACE

kubectl apply -f charts/templates/create-service-deployment.yaml -n $NAMESPACE
kubectl apply -f charts/templates/create-service-service.yaml -n $NAMESPACE

kubectl apply -f charts/templates/update-service-deployment.yaml -n $NAMESPACE
kubectl apply -f charts/templates/update-service-service.yaml -n $NAMESPACE

kubectl apply -f charts/templates/delete-service-deployment.yaml -n $NAMESPACE
kubectl apply -f charts/templates/delete-service-service.yaml -n $NAMESPACE

kubectl apply -f charts/templates/ingress.yaml -n $NAMESPACE

kubectl apply -f charts/templates/query-service-deployment.yaml -n $NAMESPACE
kubectl apply -f charts/templates/query-service-service.yaml -n $NAMESPACE

kubectl apply -f charts/templates/ingress.yaml -n $NAMESPACE
