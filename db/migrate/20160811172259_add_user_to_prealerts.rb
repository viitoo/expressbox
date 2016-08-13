class AddUserToPrealerts < ActiveRecord::Migration
  def change
    add_reference :prealerts, :user, index: true, foreign_key: true
  end
end
