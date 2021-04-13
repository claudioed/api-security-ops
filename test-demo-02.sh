#!/bin/bash

# Kong Port
PORT=57808
JWT=eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJRd3FRTTFSX3RXdFJXUjJPdVNXYzVvcklhOVFiaW9kUnBvYTVzRmJrQmxFIn0.eyJleHAiOjE2MTgzNDY0ODQsImlhdCI6MTYxODMxMDQ4NCwianRpIjoiNTk1NjI4NWEtN2U2Yi00ZGMxLWJmMzktZDY5OTY4MDJjOWIyIiwiaXNzIjoiaHR0cDovL2tleWNsb2FrLmlhbS9hdXRoL3JlYWxtcy9iZXRzIiwiYXVkIjoiYWNjb3VudCIsInN1YiI6ImQ2ZjMxODhlLTE3YTYtNGMzZi04ZmM3LTlmZjFkZjIzYzAyZSIsInR5cCI6IkJlYXJlciIsImF6cCI6ImtvbmciLCJzZXNzaW9uX3N0YXRlIjoiNWY3YTRkM2YtYTMwYS00NGRjLWIwMTUtM2FhNDUwMjIwYjkzIiwiYWNyIjoiMSIsInJlYWxtX2FjY2VzcyI6eyJyb2xlcyI6WyJvZmZsaW5lX2FjY2VzcyIsInVtYV9hdXRob3JpemF0aW9uIl19LCJyZXNvdXJjZV9hY2Nlc3MiOnsiYWNjb3VudCI6eyJyb2xlcyI6WyJtYW5hZ2UtYWNjb3VudCIsInZpZXctcHJvZmlsZSJdfX0sInNjb3BlIjoib3BlbmlkIHByb2ZpbGUgZW1haWwiLCJlbWFpbF92ZXJpZmllZCI6ZmFsc2UsInByZWZlcnJlZF91c2VybmFtZSI6ImpvZSJ9.MFkm0NcnwNHEoRQW2CDnE-jnASkAWhPz832uY2BZWW2SkGQHXD_j2gKq2ncc-n7tEQSEkCDLAtasNrlB8fp4AKnq31wHaaJDB1D3w1gN447b-qGKceB3x9f20LCdTmel6YR33iEN4Is7_aT6GclkD0jORzyuGIteDk6kFiViWNpkxD0OUPBBMZqjq9ruQ778Z0mr9rFxqEUvNmSudaHMA9_hnoIhsRF3PreFUyJeQKOoOfkz2q1A9BMLMnGqP3kIZoK5RPJ4Ews12plexdfU2AXUzr_7Vv1R0lObaz5WtXz-Ng52wsK1GpXbP7xZCn_pF6keCQ3fOgmG_NXsNO3w1w

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