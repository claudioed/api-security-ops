#!/bin/bash

# Adicionar conforme o minikube tunnel
PORT=51959

while [ true ]; do
    curl -X POST --location "http://127.0.0.1:$PORT/api/bets" \
      -H "Content-Type: application/json" \
      -d "{
            \"match\": \"1X-DC\",
            \"email\": \"joe@doe.com\",
            \"championship\": \"Uefa Champions League\",
            \"awayTeamScore\": \"2\",
            \"homeTeamScore\": \"3\"
          }"
      sleep 1
done