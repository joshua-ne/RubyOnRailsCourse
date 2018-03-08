class CreateVc < ActiveRecord::Migration[5.1]
  def change
    create_table :vcs do |t|
      t.string :make
      t.string :gpu_ram
      t.string :price
      t.string :year
    end
  end
end
