# frozen_string_literal: true

class SongsController < OpenReadController
  before_action :set_song, only: [:show, :update, :destroy]

  # GET /songs
  def index
    # Somehow I need to find a way to do: Song.where(user_id: current_user.id
    # @songs = Song.where(user_id: 4)
    # @songs = Song.where('user_id = :user', user: current_user.id)
    # @songs = Song.all
    @songs = current_user.songs
    render json: @songs
  end

  # GET /songs/1
  def show
    render json: @song
  end

  # POST /songs
  def create
    # puts 'song_params are ' + song_params
    @song = current_user.songs.build(song_params)

    if @song.save
      render json: @song, status: :created, location: @song
    else
      render json: @song.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /songs/1
  def update
    if @song.update(edit_song_params)
      render json: @song
    else
      render json: @song.errors, status: :unprocessable_entity
    end
  end

  # DELETE /songs/1
  def destroy
    @song.destroy
  end

    # Use callbacks to share common setup or constraints between actions.
    def set_song
      # @song = Song.find(params[:id])
      @song = current_user.songs.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def song_params
      params.require(:song).permit(:song_title, :artist_name, :song_url)
    end

    def edit_song_params
      params.require(:song).permit(:song_title, :artist_name)
    end

  private :set_song, :song_params
end
