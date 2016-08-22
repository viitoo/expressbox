class CreateShips < ActiveRecord::Migration
  def change
    create_table :ships do |t|
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :country
      t.string :phone

      t.timestamps null: false
    end
  end
end
