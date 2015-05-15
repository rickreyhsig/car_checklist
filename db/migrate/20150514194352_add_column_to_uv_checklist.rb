class AddColumnToUvChecklist < ActiveRecord::Migration
  def change
    add_column :uv_checklists, :vehicle_id, :integer
  end
end
