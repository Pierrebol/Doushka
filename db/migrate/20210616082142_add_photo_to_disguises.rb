class AddPhotoToDisguises < ActiveRecord::Migration[6.0]
  def change
    add_column :disguises, :photo, :string
  end
end
