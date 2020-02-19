class LikesController < ApplicationController
  def create
    @like = Like.new(user_id: current_user.id, home_id: params[:home_id])
    @like.save
    @home = Home.find_by(id: @like.home_id)
    @like_count = Like.where(home_id: params[:home_id]).count
  end
  
  def delete
    @like = Like.find_by(user_id: current_user.id, home_id: params[:home_id])
    @home = Home.find_by(id: @like.home_id)
    @like.destroy
    @like_count = Like.where(home_id: params[:home_id]).count
  end
end
