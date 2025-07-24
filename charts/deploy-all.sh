#!/bin/bash
kubectl apply -f namespace.yaml
kubectl apply -f mysql-secret.yaml -n cnas-crud-php
kubectl apply -f mysql-init.yaml -n cnas-crud-php
kubectl apply -f mysql-deployment.yaml -n cnas-crud-php
kubectl apply -f mysql-service.yaml -n cnas-crud-php
kubectl apply -f create-service-deployment.yaml -n cnas-crud-php
kubectl apply -f create-service-service.yaml -n cnas-crud-php
kubectl apply -f update-service-deployment.yaml -n cnas-crud-php
kubectl apply -f update-service-service.yaml -n cnas-crud-php
kubectl apply -f delete-service-deployment.yaml -n cnas-crud-php
kubectl apply -f delete-service-service.yaml -n cnas-crud-php
kubectl apply -f query-service-deployment.yaml -n cnas-crud-php
kubectl apply -f query-service-service.yaml -n cnas-crud-php
kubectl apply -f ingress.yaml -n cnas-crud-php
