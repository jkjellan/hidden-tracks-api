#!/bin/bash

curl --include --request POST http://localhost:4741/songs \
  --header "Content-Type: application/json" \
  --data '{
    "song": {
      "song_title": "song1",
      "artist_name": "artist1",
      "song_url": "def"
    }
  }'

echo
