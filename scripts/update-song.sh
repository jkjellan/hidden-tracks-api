#!/bin/bash

curl --include --request PATCH http://localhost:4741/songs/3 \
  --header "Content-Type: application/json" \
  --data '{
    "song": {
      "song_title": "song1",
      "artist_name": "updated artist",
      "song_url": "updated song URL"
    }
  }'

echo
