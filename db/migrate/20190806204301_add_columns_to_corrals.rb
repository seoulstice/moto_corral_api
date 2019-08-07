class AddColumnsToCorrals < ActiveRecord::Migration[5.2]
  def change
    add_column :corrals, :city, :string
    add_column :corrals, :state, :string
    add_column :corrals, :zip, :integer
    add_column :corrals, :side, :string
  end
end
