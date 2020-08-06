class AddindexAgeAndNameToUser < ActiveRecord::Migration[6.0]
  def change
    add_index :users,:name
    add_index :users,:age
  end
end
