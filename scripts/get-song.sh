#!/bin/bash

curl --include --request GET http://localhost:4741/songs/5 \
  --header "Content-Type: application/json"


echo
