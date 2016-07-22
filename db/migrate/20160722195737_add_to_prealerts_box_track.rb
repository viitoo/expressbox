class AddToPrealertsBoxTrack < ActiveRecord::Migration
  def change
    add_column :prealerts, :box_track, :string
  end
end
