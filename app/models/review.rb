class Review < ApplicationRecord
  RATINGS = [0, 1, 2, 3, 4, 5].freeze
  belongs_to :restaurant
  validates :restaurant, presence: true
  validates :content, presence: true
  validates :rating, numericality: { only_integer: true }, presence: true, inclusion: { in: RATINGS }
end
