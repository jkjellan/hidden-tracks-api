#!/bin/bash

curl --include --request DELETE http://localhost:4741/playlists/2 \
  --header "Content-Type: application/json"


echo
