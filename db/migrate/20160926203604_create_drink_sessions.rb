class CreateDrinkSessions < ActiveRecord::Migration
  def change
    create_table :drink_sessions do |t|
      t.string :title
      t.integer :user_id
      t.integer :total_BAC


      t.timestamps null:false
    end
  end
end
