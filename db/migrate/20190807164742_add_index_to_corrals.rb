class AddIndexToCorrals < ActiveRecord::Migration[5.2]
    def change
        add_index :corrals, [:latitude, :longitude]
    end
end
