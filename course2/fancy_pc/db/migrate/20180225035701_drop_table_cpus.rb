class DropTableCpus < ActiveRecord::Migration[5.1]
  def change
    drop_table :table_cpus do |t|
    end
  end
end
