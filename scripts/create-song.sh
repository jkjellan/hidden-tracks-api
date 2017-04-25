#!/bin/bash

curl --include --request POST http://localhost:4741/songs \
  --header "Content-Type: application/json" \
  --data '{
    "song": {
      "song_title": "Either Way",
      "artist_name": "Wilco",
      "song_url": "https://www.youtube.com/watch?v=otz5V3RnG1Q"
    }
  }'

echo
