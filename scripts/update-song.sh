#!/bin/bash

curl --include --request PATCH http://localhost:4741/songs/16 \
  --header "Content-Type: application/json" \
  --data '{
    "song": {
      "song_url": "https://www.youtube.com/embed/gAcGQAbJu-4"
    }
  }'

echo
