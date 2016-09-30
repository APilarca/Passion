class Locations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.references :drink_sessions
      t.string :locations

      t.timestamps null:false
    end
  end
end
