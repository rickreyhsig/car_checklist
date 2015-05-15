class CreateNvChecklists < ActiveRecord::Migration
  def change
    create_table :nv_checklists do |t|
      t.boolean :stock_in
      t.boolean :pdi
      t.string :pdi_completed_by
      t.text :notes
      t.boolean :ready_to_show

      t.timestamps
    end
  end
end
