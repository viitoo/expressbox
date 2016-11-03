class Admins::AdminController < ApplicationController
  layout "admin"
  def index
    @prealerts = Prealert.all.paginate(:page => params[:page], :per_page => 15).order(created_at: :desc)

    if params[:search]
      @prealerts = Prealert.search(params[:search]).paginate(:page => params[:page], :per_page => 15).order(created_at: :desc)
    end

  end
end
