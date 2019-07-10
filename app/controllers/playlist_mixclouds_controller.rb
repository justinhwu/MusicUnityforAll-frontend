class PlaylistMixcloudsController < ApplicationController
  def index
    render json: PlaylistMixcloud.all
  end

  def removemix
    @mixcloud = PlaylistMixcloud.find_by(playlist_id: params[:playlist_ids], mixcloud_id: params[:mixcloud_id])
    @mixcloud.destroy
    @lists = User.find(params[:user_id]).playlists
    render json: @lists
  end

  private

  def playlist_mixclouds_params
    params.require(:playlist_mixcloud).permit(:user_id, :mixcloud_id, :playlist_id)
  end


end
