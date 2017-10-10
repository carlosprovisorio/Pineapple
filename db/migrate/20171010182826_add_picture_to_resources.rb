class AddPictureToResources < ActiveRecord::Migration[5.0]
  def change
    add_column :resources, :picture, :string
  end
end
