#!/bin/bash

curl --include --request GET http://localhost:4741/playlists/1 \
  --header "Content-Type: application/json"


echo
