class CreateEmployee < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
    	t.string :name
    	t.string :phone
    	t.string :designation

    	t.timestamps
    end
  end
end
