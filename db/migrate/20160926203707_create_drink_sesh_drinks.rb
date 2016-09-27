class CreateDrinkSeshDrinks < ActiveRecord::Migration
  def change
    create_table :drink_sesh_drinks do |t|
      t.references :drink_id
      t.references :session_id

      t.timestamps null:false
    end
  end
end
