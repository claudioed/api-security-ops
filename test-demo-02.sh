#!/bin/bash

# Kong Port
PORT=52641
JWT=eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJRd3FRTTFSX3RXdFJXUjJPdVNXYzVvcklhOVFiaW9kUnBvYTVzRmJrQmxFIn0.eyJleHAiOjE2MTgzOTA3MDIsImlhdCI6MTYxODM1NDcwMiwianRpIjoiNTVhMDAzMmItZDlhYS00NWJmLTg3YWItNDAxNTdlOGYxNGUyIiwiaXNzIjoiaHR0cDovL2tleWNsb2FrLmlhbS9hdXRoL3JlYWxtcy9iZXRzIiwiYXVkIjoiYWNjb3VudCIsInN1YiI6ImQ2ZjMxODhlLTE3YTYtNGMzZi04ZmM3LTlmZjFkZjIzYzAyZSIsInR5cCI6IkJlYXJlciIsImF6cCI6ImtvbmciLCJzZXNzaW9uX3N0YXRlIjoiN2UzNDkwOTctMjBlMi00Njg2LThlOWItMDRkYjY2YmMxOWE0IiwiYWNyIjoiMSIsInJlYWxtX2FjY2VzcyI6eyJyb2xlcyI6WyJvZmZsaW5lX2FjY2VzcyIsInVtYV9hdXRob3JpemF0aW9uIl19LCJyZXNvdXJjZV9hY2Nlc3MiOnsiYWNjb3VudCI6eyJyb2xlcyI6WyJtYW5hZ2UtYWNjb3VudCIsInZpZXctcHJvZmlsZSJdfX0sInNjb3BlIjoib3BlbmlkIHByb2ZpbGUgZW1haWwiLCJlbWFpbF92ZXJpZmllZCI6ZmFsc2UsInByZWZlcnJlZF91c2VybmFtZSI6ImpvZSJ9.JDPi-D2Nz2YKZfVn7u4MPo-51AjWrLQ3VhyxlIuYU1PG9ohTOHB-TrD2hTU_oI3lJ4oDLSY6iMi3ctcOuVYOVzDAvxZrKKG6vziQr62MOa6orgdCAmnUTIiBCRQ9CfOJJ-WxbClx4lzGRnd_UzOCn1pkFcUDWeVQIcow0gifDhiEZ3C4GJfX75c0qvcQzl4VMqDTVIf3DWu26103o_bbCNez9KKNgVkqEL8l1FHI2WocjISjCk8Hnd7iEZmYssl-Jc349OJc_e2c0f20ByU1j9oket2Lh8nNXv0-cKK1AA_FuKJaPQTXEuIchV0N89l18zCKp9ODaf5qyAJLL11MYQ

while [ true ]; do
    curl -X POST --location "http://127.0.0.1:$PORT/api/play" \
      -H "Authorization: Bearer $JWT" \
      -H "Content-Type: application/json" \
      -d "{
            \"match\": \"1X-DC\",
            \"email\": \"joe@doe.com\",
            \"championship\": \"Uefa Champions League\",
            \"awayTeamScore\": \"2\",
            \"homeTeamScore\": \"3\"
          }"
      sleep 3
done