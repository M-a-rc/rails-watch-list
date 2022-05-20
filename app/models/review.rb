class Review < ApplicationRecord
  belongs_to :movie

  validates :content, presence: true
  validates :stars, presence: true
  validates :stars, numericality: { only_integer: true }
end
