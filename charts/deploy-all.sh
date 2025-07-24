#!/bin/bash
# bruh
kubectl apply -f namespace.yaml
kubectl apply -f templates/mysql-secret.yaml -n cnas-crud-php
kubectl apply -f templates/mysql-init.yaml -n cnas-crud-php
kubectl apply -f templates/mysql-deployment.yaml -n cnas-crud-php
kubectl apply -f templates/mysql-service.yaml -n cnas-crud-php
kubectl apply -f templates/create-service-deployment.yaml -n cnas-crud-php
kubectl apply -f templates/create-service-service.yaml -n cnas-crud-php
kubectl apply -f templates/update-service-deployment.yaml -n cnas-crud-php
kubectl apply -f templates/update-service-service.yaml -n cnas-crud-php
kubectl apply -f templates/delete-service-deployment.yaml -n cnas-crud-php
kubectl apply -f templates/delete-service-service.yaml -n cnas-crud-php
kubectl apply -f templates/query-service-deployment.yaml -n cnas-crud-php
kubectl apply -f templates/query-service-service.yaml -n cnas-crud-php
kubectl apply -f templates/ingress.yaml -n cnas-crud-php

