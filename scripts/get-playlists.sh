#!/bin/bash

curl --include --request GET http://localhost:4741/playlists/ \
  --header "Content-Type: application/json"


echo
