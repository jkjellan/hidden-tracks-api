#!/bin/bash

curl --include --request GET http://localhost:4741/songs/ \
  --header "Content-Type: application/json"


echo
