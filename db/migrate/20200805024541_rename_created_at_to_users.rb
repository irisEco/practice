class RenameCreatedAtToUsers < ActiveRecord::Migration[6.0]
  def change
    rename_column :users,:created_at,:chuang_jian_shi_jian
  end
end
