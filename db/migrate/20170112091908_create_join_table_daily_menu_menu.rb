class CreateJoinTableDailyMenuMenu < ActiveRecord::Migration[5.0]
  def change
    create_join_table :daily_menus, :menus do |t|
      t.index [:daily_menu_id, :menu_id]
      t.index [:menu_id, :daily_menu_id]
    end
  end
end
