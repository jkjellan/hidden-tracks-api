class AddUserToPlaylists < ActiveRecord::Migration[5.0]
  def change
    add_reference :playlists, :user, foreign_key: true
  end
end
