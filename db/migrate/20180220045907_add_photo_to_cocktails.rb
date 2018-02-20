class AddPhotoToCocktails < ActiveRecord::Migration[5.1]
  def change
    add_column :cocktails, :photo, :string, default: "http://res.cloudinary.com/arnauddlc/image/upload/c_scale,h_200/v1519104348/siprofesor.jpg"
  end
end