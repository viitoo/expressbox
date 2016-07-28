class AddImageToPrealerts < ActiveRecord::Migration
  def change
    add_column :prealerts, :image, :string
    add_column :prealerts, :image2, :string
  end
end
