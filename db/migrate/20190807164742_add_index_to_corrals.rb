class AddIndexToCorrals < ActiveRecord::Migration[5.2]
  def change
    add_index :corrals, %i[latitude longitude]
  end
end
