class Song < ApplicationRecord
  has_many :users, through: :playlists
end
