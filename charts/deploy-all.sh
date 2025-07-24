#!/bin/bash
set -e

NAMESPACE="cnas-crud-php"

echo "[INFO] Deleting CNAS Deployments and Services..."

# Delete Deployments
kubectl delete deployment create-service -n $NAMESPACE || true
kubectl delete deployment update-service -n $NAMESPACE || true
kubectl delete deployment delete-service -n $NAMESPACE || true
kubectl delete deployment query-service -n $NAMESPACE || true
kubectl delete deployment mysql -n $NAMESPACE || true

# Delete Services
kubectl delete service create-service -n $NAMESPACE || true
kubectl delete service update-service -n $NAMESPACE || true
kubectl delete service delete-service -n $NAMESPACE || true
kubectl delete service query-service -n $NAMESPACE || true
kubectl delete service mysql -n $NAMESPACE || true

# Delete Ingress (if applicable)
kubectl delete ingress cnas-ingress -n $NAMESPACE || true

# Optionally delete PVCs, secrets, configmaps if they’re dynamic
# kubectl delete pvc --all -n $NAMESPACE || true
# kubectl delete secret mysql-secret -n $NAMESPACE || true

echo "[INFO] Applying updated manifests..."

kubectl apply -f namespace.yaml
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

kubectl apply -f charts/templates/query-service-deployment.yaml -n $NAMESPACE
kubectl apply -f charts/templates/query-service-service.yaml -n $NAMESPACE

kubectl apply -f charts/templates/ingress.yaml -n $NAMESPACE
