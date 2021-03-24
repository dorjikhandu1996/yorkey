class AddDiscountIdToOrderItem < ActiveRecord::Migration[6.1]
  def change
    add_column :order_items, :discount_id, :integer
  end
end
