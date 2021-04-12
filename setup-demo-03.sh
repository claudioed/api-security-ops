#!/bin/bash
cd bets
sh bets-kong.sh
cd ..

cd play
sh play-kong.sh
cd ..

minikube service --url kong-proxy -n kong