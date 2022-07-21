class SurfboardsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @surfboards = Surfboard.all
  end

  def create
    @surfboard = Surfboard.New(surfboard_params)
    @surfboard.user = current_user
    if @surfboard.save
      redirect_to course_path(@surfboard)
    else
      render :new
    end
  end

  def show
    @surfboard = Surfboard.find(params[:id])
  end

  def update
    @surfboard = Surfboard.find(params[:id])
    @surfboard.update(surfboard_params)
  end

  private

  def surfboard_params
    params.require(:surfboard).permit(:city, :price_day, :type, :detail, :user_id)
  end

  def set_surfboard
    @surfboard = Surfboard.find(params[:id])
  end
end
