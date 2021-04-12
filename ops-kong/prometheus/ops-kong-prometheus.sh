#!/bin/bash
helm repo add bitnami https://charts.bitnami.com/bitnami
helm install prometheus-kong bitnami/kube-prometheus -n kong-ops