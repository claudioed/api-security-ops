#!/bin/bash

echo "Installing Istio"
istioctl install
sh istio/addons.sh
sh istio/addons.sh

echo "Kong"
cd kong
sh kong.sh
cd ..

echo "Installing Keycloak"

cd keycloak
sh keycloak.sh
cd ..

echo "Installing Bets"

cd bets
sh bets.sh
cd ..

echo "Installing Play"

cd play
sh play.sh
cd ..

echo "Installing Legacy"

cd legacy
sh legacy.sh
cd ..

echo "Installing Token"

cd token
sh token.sh
cd ..