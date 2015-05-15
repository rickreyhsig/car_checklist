class AddChecklistIdToVehicle < ActiveRecord::Migration
  def change
    add_column :vehicles, :checklist_id, :integer
  end
end
