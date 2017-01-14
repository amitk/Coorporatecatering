class CreateJoinTableDayMenuOrder < ActiveRecord::Migration[5.0]
  def change
    create_join_table :day_menus, :orders do |t|
      # t.index [:day_menu_id, :order_id]
      # t.index [:order_id, :day_menu_id]
    end
  end
end
