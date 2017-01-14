class DeleteTableDayMenuOrders < ActiveRecord::Migration[5.0]
  def change
  	drop_table :day_menus_orders
  end
end
