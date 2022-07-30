class SurfboardsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @surfboards = Surfboard.all
  end

  def new
    @surfboard = Surfboard.new
  end

  def create
    @surfboard = Surfboard.new(surfboard_params)
    @surfboard.user = current_user
    if @surfboard.save
      redirect_to surfboard_path(@surfboard)
    else
      render :new
    end
  end

  def show
    @surfboard = Surfboard.find(params[:id])
    @booking = Booking.new
  end

  def update
    @surfboard = Surfboard.find(params[:id])
    @surfboard.update(surfboard_params)
  end

  private

  def surfboard_params
    params.require(:surfboard).permit(:city, :price_day, :brand, :detail, :photo)
  end

  def set_surfboard
    @surfboard = Surfboard.find(params[:id])
  end
end
