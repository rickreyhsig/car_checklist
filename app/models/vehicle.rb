class Vehicle < ActiveRecord::Base
    
    def self.search(search)
        if search
            where('ext_color LIKE ? OR int_color LIKE ? OR lat LIKE ? OR long LIKE ? OR make LIKE ? OR mileage LIKE ? OR model LIKE ? OR vehicle_type LIKE ? OR price LIKE ? OR stocknum LIKE ? OR vin LIKE ? OR year LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
        else
            where(nil)
        end
    end
end
