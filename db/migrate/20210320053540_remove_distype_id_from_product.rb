class RemoveDistypeIdFromProduct < ActiveRecord::Migration[6.1]
  def change
    remove_column :products, :distype_id, :integer
  end
end
