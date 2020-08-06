class RemovecolumnUpdatedAtToUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users,:updated_at
  end
end
