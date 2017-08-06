class RemoveBrandToShoes < ActiveRecord::Migration[5.1]
  def change
  	remove_column :shoes, :brand
  end
end
