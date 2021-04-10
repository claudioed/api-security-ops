#!/bin/bash
kubectl create ns iam
helm repo add bitnami https://charts.bitnami.com/bitnami
helm install keycloak bitnami/keycloak --set auth.adminUser=keycloak,auth.adminPassword=keycloak --namespace iam