#!/bin/bash
set -e

if [[ $1 == '' ]]; then
  echo "[ERROR] Usage: $0 <URL>"
  echo "[ERROR] Example: $0 http://localhost:8080"
  echo "[ERROR] Example: $0 http://my-app.herokuapp.com"
  echo "[ERROR] Exiting..."
  exit 1
else
  base_url=$1 
fi

curl --request POST "$base_url/predict" \
     --header "Content-Type: application/json" \
     --data \
              '{ 
                "AGE": 205,
                "B": 1,
                "CHAS": 0,
                "CRIM": 0.00632,
                "DIS": 4.09,
                "INDUS": 2.31,
                "LSTAT": 4.98,
                "NOX": 0.538,
                "PTRATIO": 15.3,
                "RAD": 7.0,
                "RM": 6.575,
                "TAX": 296,
                "ZN": 18 
              }'