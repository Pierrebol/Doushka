class AddCoordinatesToDisguises < ActiveRecord::Migration[6.0]
  def change
    add_column :disguises, :latitude, :float
    add_column :disguises, :longitude, :float
  end
end
