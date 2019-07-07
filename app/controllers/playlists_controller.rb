class PlaylistsController < ApplicationController
  def index
    @playlists = Playlist.all
    render json: @playlists
  end

  def create
    @playlist = Playlist.find_or_create_by(playlist_params)
    render json: @playlist
  end

  private
  def playlist_params
    params.require(:playlist).permit!
  end

end
