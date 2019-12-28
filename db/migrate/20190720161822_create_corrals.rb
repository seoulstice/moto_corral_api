class CreateCorrals < ActiveRecord::Migration[5.2]
  def change
    create_table :corrals do |t|
      t.string :address
      t.decimal :lat, precision: 10, scale: 6
      t.decimal :long, precision: 10, scale: 6

      t.timestamps
    end
  end
end
