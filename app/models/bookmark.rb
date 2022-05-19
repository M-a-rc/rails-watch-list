class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :list, uniqueness: { scope: :movie }
  validates :comment, length: { minimum: 6 }

end
