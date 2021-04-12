#!/bin/bash
while [ true ]; do
  clear
  kubectl get pods -n iam
  sleep 3
done
