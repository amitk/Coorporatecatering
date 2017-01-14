class AddColumnReferenceToMenu < ActiveRecord::Migration[5.0]
  def change
  	add_reference :menus, :vendor, foreign_key: true, index: true
  end
end
