#!/bin/bash

# Apply namespace from root
kubectl apply -f namespace.yaml

# Apply all templates
kubectl apply -f charts/templates/mysql-secret.yaml -n cnas-crud-php
kubectl apply -f charts/templates/mysql-init.yaml -n cnas-crud-php
kubectl apply -f charts/templates/mysql-deployment.yaml -n cnas-crud-php
kubectl apply -f charts/templates/mysql-service.yaml -n cnas-crud-php
kubectl apply -f charts/templates/create-service-deployment.yaml -n cnas-crud-php
kubectl apply -f charts/templates/create-service-service.yaml -n cnas-crud-php
kubectl apply -f charts/templates/update-service-deployment.yaml -n cnas-crud-php
kubectl apply -f charts/templates/update-service-service.yaml -n cnas-crud-php
kubectl apply -f charts/templates/delete-service-deployment.yaml -n cnas-crud-php
kubectl apply -f charts/templates/delete-service-service.yaml -n cnas-crud-php
kubectl apply -f charts/templates/query-service-deployment.yaml -n cnas-crud-php
kubectl apply -f charts/templates/query-service-service.yaml -n cnas-crud-php
kubectl apply -f charts/templates/ingress.yaml -n cnas-crud-php
