class ChangeBookmamarkName < ActiveRecord::Migration[6.1]
  def change
    rename_table :bookmamrks, :bookmarks
  end
end
