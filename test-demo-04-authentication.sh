#!/bin/bash

# Kong Port
PORT=52641
JWT=XXXX

while [ true ]; do
    curl -X POST --location "http://127.0.0.1:$PORT/api/bets" \
      -H "Authorization: Bearer $JWT" \
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