class List < ApplicationRecord
  has_one_attached :photo
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  has_many :comments

  validates :name, presence: true
  validates :name, uniqueness: true
end
