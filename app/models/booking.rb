class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :surfboard

  validates :total_price, presence: true
  validates :start_day, presence: true
  validates :end_day, presence: true
end
