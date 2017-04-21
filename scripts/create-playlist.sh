#!/bin/bash

curl --include --request POST http://localhost:4741/playlists/ \
  --header "Content-Type: application/json" \
  --data '{
    "playlist": {
      "playlist_name": "What way to go",
      "user_id": 1,
      "song_id": 1
    }
  }'

echo
