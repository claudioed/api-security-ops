#!/bin/bash
kubectl apply -f namespace
kubectl apply -f configmaps -n bets
kubectl apply -f deployments -n bets
kubectl apply -f services -n bets
kubectl annotate service bets ingress.kubernetes.io/service-upstream=true -n bets