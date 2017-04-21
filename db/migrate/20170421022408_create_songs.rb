class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.string :song_title, null: false
      t.string :artist_name, null: false
      t.string :song_url, null: false

      t.timestamps
    end
  end
end
