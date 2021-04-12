# Overview

## Setup

- Docker
- Helm
- Minikube

## Install

- Istio
- Istio - Addons 2x
- Kong
- Keycloak
- Token e gera o JWT
- Bets (bets.sh)
- Play (play.sh)
- Legacy (legacy.sh)

## Testing

Get kong ip `minikube service -n kong kong-proxy`

````shell
curl --location --request POST 'http://192.168.49.2:31619/api/bets'
--header 'Content-Type: application/json'
--header 'Authorization: Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJHN0xXSi1yeHZNdFZmSjRxaXRtdnVtUC1HaGQ2Y2tidlVrRkU0d1RuTWJVIn0.eyJleHAiOjE2MTgwOTMwMTcsImlhdCI6MTYxODA1NzAxNywianRpIjoiZWE3MmE1MzItMjI2ZC00MzZiLTliZDQtY2IzMTRhYTRhMDdkIiwiaXNzIjoiaHR0cDovL2tleWNsb2FrLmlhbS9hdXRoL3JlYWxtcy9iZXRzIiwiYXVkIjoiYWNjb3VudCIsInN1YiI6IjAzMDFjYWJhLTIyODItNDNkYy1iNjM3LTVmNWE2NTQzZjFlMCIsInR5cCI6IkJlYXJlciIsImF6cCI6ImtvbmciLCJzZXNzaW9uX3N0YXRlIjoiOTFhMGM2Y2YtNjBiYS00NmZkLWE2ODYtYjJlMDA5OWM2OTgwIiwiYWNyIjoiMSIsInJlYWxtX2FjY2VzcyI6eyJyb2xlcyI6WyJvZmZsaW5lX2FjY2VzcyIsInVtYV9hdXRob3JpemF0aW9uIl19LCJyZXNvdXJjZV9hY2Nlc3MiOnsiYWNjb3VudCI6eyJyb2xlcyI6WyJtYW5hZ2UtYWNjb3VudCIsIm1hbmFnZS1hY2NvdW50LWxpbmtzIiwidmlldy1wcm9maWxlIl19fSwic2NvcGUiOiJvcGVuaWQgcHJvZmlsZSBlbWFpbCIsImVtYWlsX3ZlcmlmaWVkIjpmYWxzZSwicHJlZmVycmVkX3VzZXJuYW1lIjoiam9lIn0.CI0iQjazjfPh2kq6_QDPImN3urr28ETolozoeagWEYumfVajw1vVrsB3ipW9b2TrFHKXI4H3ewDP7uBLKZ21RzIiixGSp0iRPBnX3iNVNkpRO-gpq_eUwdWE6cXIw6kJ83ij0n_aSaD_MO9BBfTlkhXm5-RTXh_pHzbtyDpnkvh6Gcw2iE72IsQXU8b2y1d0--N5-g82qcUSpWny-m1_3Dz6A8Ka7HKjS9FyTWgzLcavZebZcyQbe4X7XfI8-UYfjb02OnLOa01uOaBs-qdfxKVbeT4GW-_BGPBTmEffH1arz8HEm_oIWtsjGlliYmt7JvBPt-5EeMSNVAH0m7MaIw'
--header 'Cookie: oidc_session=PYl19a8ecjL8JELTa2NGpw|1617886197|WfZ7-k7qYnTDajpvqJZwUaBf03xHYTkyhURu6OYYejiZorioFvFHIKVbChKn-1CbI2gR54c7kIwk4lRXSSTaFbxB4VAP2Q1YRy7XgPKJ53Z3EemTiPqrrMWqwKia7JXhb7TQ7CRKYL6ioDUg-r1_O3Hn-1ZHBNqUSfxSWdskvZH8C-79AVzQvla3J9pQt4_oLHPFdzOYJuK9dVIiV8hLqA|BQDOh7mA0dHxsE4viIUUPzAJ6-w'
--data-raw '{
   "match": "1X-DC",
   "email": "joe@doe.com",
   "championship": "Uefa Champions League",
   "awayTeamScore": "2",
   "homeTeamScore": "3"
}'
````

## Keycloak

Create realm `bets`

Create client `kong` as `confidential` and `password-flow`

kopenid.yaml adicionar `secreted` gerado

### Gerar token JWT

```shell
kubectl exec -it testcurl -- sh
```

```shell
curl --location --request POST 'http://keycloak.iam/auth/realms/bets/protocol/openid-connect/token' \
--header 'Content-Type: application/x-www-form-urlencoded' \
--data-urlencode 'client_id=kong' \
--data-urlencode 'grant_type=password' \
--data-urlencode 'username=joe' \
--data-urlencode 'password=joe' \
--data-urlencode 'client_secret=6b20eb60-e8e8-470b-a602-5d49332e1415' \
--data-urlencode 'scope=openid'
```

## Commands

```shell
minikube service -n iam keycloak

kubectl exec -it testcurl -- sh

curl --location --request POST 'http://keycloak.iam/auth/realms/bets/protocol/openid-connect/token' \
--header 'Content-Type: application/x-www-form-urlencoded' \
--data-urlencode 'client_id=kong' \
--data-urlencode 'grant_type=password' \
--data-urlencode 'username=joe' \
--data-urlencode 'password=joe' \
--data-urlencode 'client_secret=21655eb7-eda6-40b9-b497-17b62d966cca' \
--data-urlencode 'scope=openid'
```

# TODO

1 - Demo Rate Limit
2 - Dúvida, demo 03 com mtls não sei onde
3 - Demo 03, Kong não está barrando request