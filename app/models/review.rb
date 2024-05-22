class Review < ApplicationRecord
  validates :content, presence: true
  # Review.last.restaurant
  # => Dorle
  belongs_to :restaurant
end
