class AddColumnToNvChecklist < ActiveRecord::Migration
  def change
    add_column :nv_checklists, :vehicle_id, :integer
  end
end
