class PrealertsController < ApplicationController
  before_action :set_prealert, only: [:show, :edit, :update, :destroy]
  before_action :prealert_owner, only: [:edit, :update, :destroy,:show]
  layout "box"

    def prealert_owner
      if !current_user.blank?
          unless @prealert.user_id == current_user.id
            flash[:notice] = 'Accedo denegado , tu no eres el creador de esta Prealerta'
            redirect_to prealerts_path
          end
      else
        redirect_to home_no_login_path
      end

    end


  def index
    @prealerts = Prealert.where(:user_id => current_user.id).paginate(:page => params[:page], :per_page => 15).order(created_at: :desc)

    if params[:search]
      @prealerts = Prealert.search(params[:search],current_user.id).paginate(:page => params[:page], :per_page => 15).order(created_at: :desc)

    else
      @prealerts = Prealert.where(:user_id => current_user.id).paginate(:page => params[:page], :per_page =>15).order(created_at: :desc)

    end

  end

  def show
  end

  def new
    @prealert = Prealert.new
  end

  def edit

  end

  def create
    @prealert = Prealert.new(prealert_params)

    respond_to do |format|
      if @prealert.save
        format.html { redirect_to @prealert, notice: 'Prealerta fue Creado satisfactoriamente.' }
        format.json { render :show, status: :created, location: @prealert }
      else
        format.html { render :new }
        format.json { render json: @prealert.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @prealert.update(prealert_params)
        format.html { redirect_to @prealert, notice: 'Prealerta fue actualizado satisfactoriamente.' }
        format.json { render :show, status: :ok, location: @prealert }
      else
        format.html { render :edit }
        format.json { render json: @prealert.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @prealert.destroy
    respond_to do |format|
      format.html { redirect_to prealerts_url, notice: 'Prealerta fue Eliminado satisfactoriamente.' }
      format.json { head :no_content }
    end
  end

  private
    def set_prealert
      @prealert = Prealert.find(params[:id])
    end

    def prealert_params
      params.require(:prealert).permit(:tracking_number, :curier, :shop, :value_price, :description,:box_track,:image,:image2,:image_cache,:remove_image,:image2_cache, :remove_image2,:user_id)
    end
end
