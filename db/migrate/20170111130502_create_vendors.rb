class CreateVendors < ActiveRecord::Migration[5.0]
  def change
    create_table :vendors do |t|
      t.string :name
      t.string :location
      t.integer :phone

      t.timestamps
    end
  end
end
