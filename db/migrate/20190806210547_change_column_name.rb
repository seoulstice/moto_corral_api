class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :corrals, :lat, :latitude
    rename_column :corrals, :long, :longitude
  end
end
