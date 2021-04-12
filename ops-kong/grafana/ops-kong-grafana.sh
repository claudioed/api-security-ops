#!/bin/bash
helm repo add bitnami https://charts.bitnami.com/bitnami
helm install grafana-kong bitnami/grafana -n kong-ops
