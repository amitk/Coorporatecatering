class CreateMenus < ActiveRecord::Migration[5.0]
  def change
    create_table :menus do |t|
      t.string :name
      t.integer :rate
      t.boolean :veg

      t.timestamps
    end
  end
end
