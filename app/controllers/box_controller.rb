class BoxController < ApplicationController
  before_action :authenticate_user!
  def index
    @prealerts = Prealert.all
  end
end
