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

  def removesong
    @song = PlaylistSong.find_by(playlist_id: params[:playlist_ids], song_id: params[:song_id])
    @song.destroy
    @lists = User.find(params[:user_id]).playlists
    render json: @lists
  end


  private

  def playlist_songs_params
    params.require(:playlist_song).permit(:user_id, :song_id, :playlist_id)
  end

end
