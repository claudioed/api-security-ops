#!/bin/bash
kubectl apply -f namespace
kubectl apply -f deployments -n games
kubectl apply -f services -n games
kubectl annotate service play ingress.kubernetes.io/service-upstream=true -n games