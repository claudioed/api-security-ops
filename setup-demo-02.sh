#!/bin/bash
cd bets
sh bets-kong.sh
cd ..

cd play
sh play-kong.sh
cd ..

cd bets/security
kubectl apply -f cluster-peer.yaml -n istio-system
cd ..
cd ..