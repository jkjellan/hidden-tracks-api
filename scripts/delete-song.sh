#!/bin/bash

curl --include --request DELETE http://localhost:4741/songs/22 \
  --header "Content-Type: application/json"


echo
