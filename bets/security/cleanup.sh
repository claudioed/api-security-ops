#!/bin/bash
kubectl delete -f bets-mtls.yaml -n bets
kubectl delete -f cluster-peer.yaml -n istio-system