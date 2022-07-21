class Surfboard < ApplicationRecord
  belongs_to :user

  validates :city, presence: true
  validates :price_day, presence: true
  validates :brand, presence: true
  validates :detail, presence: true
end
