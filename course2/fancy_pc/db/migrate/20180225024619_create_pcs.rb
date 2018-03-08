class CreatePcs < ActiveRecord::Migration[5.1]
  def change
    create_table :pcs do |t|
      t.string :cpu
      t.string :ram
      t.string :hd
      t.string :make

      t.timestamps
    end
  end
end
