class BoxController < ApplicationController
  before_action :authenticate_user!
  layout "box"
  def index
    if !current_user.blank?
      @prealerts = Prealert.where(user_id: current_user.id).order("updated_at DESC")
      @ship = Ship.last
    else
      redirect_to home_no_login_path

    end

  end
end
