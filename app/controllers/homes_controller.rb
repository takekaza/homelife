class HomesController < ApplicationController
  before_action :set_home, except: [:indexes, :new, :create, :search]

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
    @images = Image.find_by(params[:id])
    @user_homes = Home.where(user_id: @home.user.id).where.not(id: params[:id]).limit(6)
  end

  def edit

  end

  def update

  end

  private

  def home_params
    params.require(:home).permit(:text, images_attributes: [:url,:_destroy,:id]).merge(user_id: current_user.id)
  end

  def set_home
    @home = Home.find(params[:id])
  end
end
