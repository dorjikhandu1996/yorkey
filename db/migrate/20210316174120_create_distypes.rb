class CreateDistypes < ActiveRecord::Migration[6.1]
  def change
    create_table :distypes do |t|
      t.string :discount_name
      t.references :product, null: false, foreign_key: true
      t.float :discount_amount
      t.integer :unit
      t.datetime :start
      t.datetime :end

      t.timestamps
    end
  end
end
