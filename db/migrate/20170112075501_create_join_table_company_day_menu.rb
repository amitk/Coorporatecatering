class CreateJoinTableCompanyDayMenu < ActiveRecord::Migration[5.0]
  def change
    create_join_table :companies, :day_menus do |t|
      # t.index [:company_id, :day_menu_id]
      # t.index [:day_menu_id, :company_id]
    end
  end
end
