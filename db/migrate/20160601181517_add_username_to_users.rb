class AddUsernameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :address, :text
    add_column :users, :phone_mobile, :string
    add_column :users, :phone_home, :string
    add_column :users, :phone_work, :string
    add_column :users, :birth_date, :string
    add_column :users, :account_number, :string
    add_index :users, :username, unique: true
  end
end
