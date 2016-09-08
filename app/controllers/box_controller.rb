class BoxController < ApplicationController
  before_action :authenticate_user!
  def index
    @prealerts = Prealert.where(user_id: current_user.id).order("updated_at DESC")
    @ship = Ship.last
  end
end
