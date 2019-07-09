class PlaylistsController < ApplicationController
  def index
    @playlists = Playlist.all
    render json: @playlists
  end

  def create
    @playlist = Playlist.find_or_create_by(playlist_params)
    render json: @playlist
  end

  def update
    @playlist = Playlist.find(params[:id])
    @playlist.update(playlist_params)
    @playlists = User.find(@playlist.user_id).playlists
    render json: @playlists
  end

  def destroy
    @playlist = Playlist.find(params[:id])
    @playlist.destroy
    @user = User.find(params[:user_id]).playlists
    render json: @user
  end

  private
  def playlist_params
    params.require(:playlist).permit!
  end

end
