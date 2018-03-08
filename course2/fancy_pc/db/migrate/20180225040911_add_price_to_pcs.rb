class AddPriceToPcs < ActiveRecord::Migration[5.1]
  def change
    add_column :pcs, :price, :string
  end
end
