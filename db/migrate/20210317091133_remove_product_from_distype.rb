class RemoveProductFromDistype < ActiveRecord::Migration[6.1]
  def change
    remove_reference :distypes, :product, null: false, foreign_key: true
  end
end
