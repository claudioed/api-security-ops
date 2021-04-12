#!/bin/bash
kubectl create ns kong-ops
sh grafana/ops-kong-grafana.sh
sh prometheus/ops-kong-prometheus.sh