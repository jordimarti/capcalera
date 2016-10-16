class CreateItes < ActiveRecord::Migration[5.0]
  def change
    create_table :ites do |t|
      t.integer :edifici_id
      t.boolean :existeix

      t.timestamps
    end
  end
end
