#!/bin/bash
kubectl exec -it testcurl -- sh

curl --location --request POST 'http://keycloak.iam/auth/realms/bets/protocol/openid-connect/token' \
--header 'Content-Type: application/x-www-form-urlencoded' \
--data-urlencode 'client_id=kong' \
--data-urlencode 'grant_type=password' \
--data-urlencode 'username=joe' \
--data-urlencode 'password=joe' \
--data-urlencode 'client_secret=8f1be93f-3270-4869-8bcf-1ba8b95c8b4f' \
--data-urlencode 'scope=openid'