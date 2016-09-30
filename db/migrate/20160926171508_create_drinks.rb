class CreateDrinks < ActiveRecord::Migration
  def change
    create_table :drinks do |t|
      t.string :name_of_drink
      t.integer :alcohol

      t.timestamps null:false

    end
  end
end
