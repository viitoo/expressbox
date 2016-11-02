class HomeController < ApplicationController
  def index
  end

  def no_login
    @mensaje="no ha iniciado como un usuario del sistema."
  end

end
