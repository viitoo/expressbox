class BoxController < ApplicationController
  before_action :authenticate_user!
  def index
    #@user = current.user
  end
end
