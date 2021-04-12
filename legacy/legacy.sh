#!/bin/bash
kubectl apply -f namespace
kubectl apply -f deployments -n legacy
kubectl apply -f services -n legacy
sleep 5