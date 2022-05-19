class CreateBookmamrks < ActiveRecord::Migration[6.1]
  def change
    create_table :bookmamrks do |t|
      t.string :comment
      t.references :movie, null: false, foreign_key: true
      t.references :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
