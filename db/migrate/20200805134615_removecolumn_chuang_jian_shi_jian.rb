class RemovecolumnChuangJianShiJian < ActiveRecord::Migration[6.0]
  def change
    remove_column :users ,:chuang_jian_shi_jian
  end
end
