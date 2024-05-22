class Restaurant < ApplicationRecord
  validates :name, presence: true

  # Restaurant.last.reviews
  has_many :reviews, dependent: :destroy
end
