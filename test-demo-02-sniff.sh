#!/bin/bash
kubectl sniff -p $(kubectl get pods -n bets | grep bets | awk '{print $1}') -c istio-proxy -n bets