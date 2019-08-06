class AddCountryToCorrals < ActiveRecord::Migration[5.2]
  def change
    add_column :corrals, :country, :string
  end
end
