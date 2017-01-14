class AddReferenceToDailyMenu < ActiveRecord::Migration[5.0]
  def change
  	add_reference :orders, :daily_menu, foreign_key: true,index: true
  end
end
