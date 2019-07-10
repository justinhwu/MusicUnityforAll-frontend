class MixcloudsController < ApplicationController
  def index
    @mixclouds = Mixcloud.all
    render json: @mixclouds
  end

  def addmixcloud
    @mixcloud = Mixcloud.find_or_create_by(mixcloud_params)
    params[:playlist_ids].each do |playlist_id|
      PlaylistMixcloud.find_or_create_by(playlist_id: playlist_id , mixcloud_id: @mixcloud.id)
    end
    @lists = User.find(params[:user_id]).playlists
    render json: @lists
  end

  private
  def mixcloud_params
    params.require(:mixcloud).permit(:playlist_ids, :name, :create_time, :username, :url)
  end

end
