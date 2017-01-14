class CreateJoinTableDayMenuMenu < ActiveRecord::Migration[5.0]
  def change
    create_join_table :day_menus, :menus do |t|
      # t.index [:day_menu_id, :menu_id]
      # t.index [:menu_id, :day_menu_id]
    end
  end
end
