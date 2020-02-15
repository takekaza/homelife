class HomesController < ApplicationController

  def index
  end
  def indexes
    @home = Home.includes(:user)
    @images = Image.all
  end

  def new
    @home = Home.new
    @home.images.new
  end

  def create
    @home = Home.new(home_params)
    if @home.save
      redirect_to homes_indexes_path
    else
      render :new
    end
  end

  def show

  end

  def edit

  end

  def update

  end

  private

  def home_params
    params.require(:home).permit(:text, images_attributes: [:url,:_destroy,:id]).merge(user_id: current_user.id)
  end

end
