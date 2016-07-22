class CreatePrealerts < ActiveRecord::Migration
  def change
    create_table :prealerts do |t|
      t.string :tracking_number
      t.string :curier
      t.string :shop
      t.string :value_price
      t.string :description

      t.timestamps null: false
    end
  end
end
