#!/bin/bash

TOKEN=""

curl --include --request POST http://localhost:4741/songs \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiVjM2M1YzFiOTEyZDZhMjQxMGFlYzUzYmEyNjgxNzUwMwY6BkVG--0fac3671ea2d501970f13a0a6d47f4af9c5e259f" \
  --data '{
    "song": {
      "song_title": "Either Way",
      "artist_name": "Wilco",
      "song_url": "https://www.youtube.com/watch?v=otz5V3RnG1Q"
      "user_id": "1"
    }
  }'

echo
