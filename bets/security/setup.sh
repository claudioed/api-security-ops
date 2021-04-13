#!/bin/bash
sh bets-mtls.sh
kubectl apply -f cluster-peer.yaml -n istio-system