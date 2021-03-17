class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.references :category, null: false, foreign_key: true
      t.string :name
      t.string :serial_number
      t.string :size
      t.float :cost
      t.references :distype, null: false, foreign_key: true
      t.integer :sku
      t.text :description

      t.timestamps
    end
  end
end
