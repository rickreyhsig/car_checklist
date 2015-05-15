class CreateUvChecklists < ActiveRecord::Migration
  def change
    create_table :uv_checklists do |t|
      t.boolean :msi_cpo
      t.string :msi_cpo_completed_by
      t.text :notes
      t.boolean :paint_wheels
      t.text :details

      t.timestamps
    end
  end
end
