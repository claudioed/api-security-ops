#!/bin/bash

# Kong Port
PORT=54803
JWT=eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJRd3FRTTFSX3RXdFJXUjJPdVNXYzVvcklhOVFiaW9kUnBvYTVzRmJrQmxFIn0.eyJleHAiOjE2MTgzMDY2MjYsImlhdCI6MTYxODI3MDYyNiwianRpIjoiNmZhZTFkNGQtNzRmNC00Nzk3LWIyN2MtNWU5NjY1ZGFkMzg1IiwiaXNzIjoiaHR0cDovL2tleWNsb2FrLmlhbS9hdXRoL3JlYWxtcy9iZXRzIiwiYXVkIjoiYWNjb3VudCIsInN1YiI6ImQ2ZjMxODhlLTE3YTYtNGMzZi04ZmM3LTlmZjFkZjIzYzAyZSIsInR5cCI6IkJlYXJlciIsImF6cCI6ImtvbmciLCJzZXNzaW9uX3N0YXRlIjoiNDRmZjI4NTctNmFjYy00MjkzLWEyZmEtNDE1OTEyMDJiZDMyIiwiYWNyIjoiMSIsInJlYWxtX2FjY2VzcyI6eyJyb2xlcyI6WyJvZmZsaW5lX2FjY2VzcyIsInVtYV9hdXRob3JpemF0aW9uIl19LCJyZXNvdXJjZV9hY2Nlc3MiOnsiYWNjb3VudCI6eyJyb2xlcyI6WyJtYW5hZ2UtYWNjb3VudCIsInZpZXctcHJvZmlsZSJdfX0sInNjb3BlIjoib3BlbmlkIHByb2ZpbGUgZW1haWwiLCJlbWFpbF92ZXJpZmllZCI6ZmFsc2UsInByZWZlcnJlZF91c2VybmFtZSI6ImpvZSJ9.Wo2HfWwixCyvISFfYTkkbLSSytJLOASi4E48Yb3wXPAAXm5aUPPhgRR4oLfnpMn1iWtrZL6BGbimqd9NWC2UsYDV0dWwHt2UKs5AAfw-h29JrI_uAST-Ptg5Jh046l1qCtH7104DlGQisoRFbK26-tA5OmWB4fMx60Xw9w3U55_q9aimK7Hs2Q6f6VVeaTX5Cb5YZ90pGchST6zjk6t_Dm4OrvEJ5y5_uaSu9-uM7YMxgnoXYWGNgk8keqOgIPpwYmeJ3_xtPY0WYqJrj4PuYl08QtEmizwJ1ra-IMnGIpE1btkd8ayV3IutoUtw4GgcDxcvNeNDFktfRPvoLjmtBg

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
      sleep 15
done