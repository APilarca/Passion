class CreateDsd < ActiveRecord::Migration
  def change
    create_table :dsds do |t|
      t.integer :drink_id
      t.integer :drink_session_id

      t.timestamps null:false
    end
  end
end
