class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
  	rename_column :daily_menus, :data, :date
  end
end
