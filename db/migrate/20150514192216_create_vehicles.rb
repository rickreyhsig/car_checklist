class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :ext_color
      t.string :int_color
      t.decimal :lat
      t.decimal :long
      t.string :make
      t.string :mileage
      t.string :model
      t.string :vehicle_type
      t.decimal :price
      t.string :stocknum
      t.string :vin
      t.integer :year

      t.timestamps
    end
  end
end
