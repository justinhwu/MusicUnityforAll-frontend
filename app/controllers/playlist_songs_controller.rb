class PlaylistSongsController < ApplicationController
  def removesong
    @findjoin = PlaylistSong.find_by(playlist_songs_params).destroy
    render json: @findjoin
  end

  def index
    @playlistsongs = PlaylistSong.all
    render json: @playlistsongs
  end

  def show
    @playlistsongs = PlaylistSong.find(params[:id])
    render json: @playlistsongs
  end

  private

  def playlist_songs_params
    params.require(:playlist_song).permit!
  end

end
