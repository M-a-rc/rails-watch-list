class AddStarsToReviews < ActiveRecord::Migration[6.1]
  def change
    add_column :reviews, :stars, :integer
  end
end
