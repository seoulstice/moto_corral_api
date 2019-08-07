class ChangeCorralsLatLongScale < ActiveRecord::Migration[5.2]
  def change
    change_column :corrals, :latitude, :decimal, precision: 10, scale: 8
    change_column :corrals, :longitude, :decimal, precision: 10, scale: 8
  end
end
