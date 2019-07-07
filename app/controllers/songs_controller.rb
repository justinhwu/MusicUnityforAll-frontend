class SongsController < ApplicationController

  def index
    @songs = Song.all
    render json: @songs
  end

  def show
    @song = Song.find(params[:id])
  end

  def addsong
    @song = Song.find_or_create_by(song_params)
    params[:playlist_ids].each do |playlist_id|
      PlaylistSong.find_or_create_by(playlist_id: playlist_id , song_id: @song.id)
    end
    render json: @song
  end

  private
  def song_params
    params.require(:song).permit(:playlist_ids, :videoId, :title, :publishedAt, :channelTitle, :description)
  end
end
