class AddSongToPlaylists < ActiveRecord::Migration[5.0]
  def change
    add_reference :playlists, :song, foreign_key: true
  end
end
