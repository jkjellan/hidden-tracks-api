SELECT s.song_title, s.artist_name, s.song_url, u.email
FROM songs s
INNER JOIN playlists p
  ON p.song_id = s.id
INNER JOIN users u
  ON p.user_id = u.id
