class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def my_bookings
    @bookings = Booking.where(user: current_user)
  end
end
