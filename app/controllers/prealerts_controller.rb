class PrealertsController < ApplicationController
  before_action :set_prealert, only: [:show, :edit, :update, :destroy]
  layout "box"
  def index
    @prealerts = Prealert.all
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
      params.require(:prealert).permit(:tracking_number, :curier, :shop, :value_price, :description,:box_track,:image,:image2,:image_cache,:remove_image,:image2_cache, :remove_image2)
    end
end
