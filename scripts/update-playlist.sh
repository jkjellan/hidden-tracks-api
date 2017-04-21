#!/bin/bash

curl --include --request PATCH http://localhost:4741/playlists/3 \
  --header "Content-Type: application/json" \
  --data '{
    "playlist": {
      "playlist_name": "Iceland Yo",
    }
  }'

echo
