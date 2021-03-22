class AddPercentToDistypes < ActiveRecord::Migration[6.1]
  def change
    add_column :distypes, :percent, :integer
  end
end
