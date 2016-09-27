class CreateDrinkSesh < ActiveRecord::Migration
  def change
    create_table :drink_sesh do |t|
      t.references :user_id
      t.integer :total_BAC

      t.timestamps null:false
    end
  end
end
