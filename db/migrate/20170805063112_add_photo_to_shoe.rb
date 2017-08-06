class AddPhotoToShoe < ActiveRecord::Migration[5.1]
  def up
    add_attachment :shoes, :photo
  end

  def down
    remove_attachment :shoes, :photo
  end
end
