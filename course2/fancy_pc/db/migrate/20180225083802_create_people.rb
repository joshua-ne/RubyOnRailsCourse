class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :fn
      t.string :ln

      t.timestamps
    end
  end
end
