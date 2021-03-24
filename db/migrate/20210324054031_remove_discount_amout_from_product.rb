class RemoveDiscountAmoutFromProduct < ActiveRecord::Migration[6.1]
  def change
    remove_column :products, :discount_amount, :float
  end
end
