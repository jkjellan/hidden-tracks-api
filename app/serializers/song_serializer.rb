class SongSerializer < ActiveModel::Serializer
  attributes :id, :song_title, :artist_name, :song_url, :user_id
end
