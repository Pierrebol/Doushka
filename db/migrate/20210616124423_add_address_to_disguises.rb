class AddAddressToDisguises < ActiveRecord::Migration[6.0]
  def change
    add_column :disguises, :address, :string
  end
end
