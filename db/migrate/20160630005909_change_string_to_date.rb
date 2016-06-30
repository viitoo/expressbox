class ChangeStringToDate < ActiveRecord::Migration
  def change
    remove_column :users , :birth_date
    add_column :users, :birth_date, :date 
  end
end
