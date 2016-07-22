class PrealertsController < ApplicationController
  before_action :set_prealert, only: [:show, :edit, :update, :destroy]
  layout "box"
  # GET /prealerts
  # GET /prealerts.json
  def index
    @prealerts = Prealert.all
  end

  # GET /prealerts/1
  # GET /prealerts/1.json
  def show
  end

  # GET /prealerts/new
  def new
    @prealert = Prealert.new
  end

  # GET /prealerts/1/edit
  def edit
  end

  # POST /prealerts
  # POST /prealerts.json
  def create
    @prealert = Prealert.new(prealert_params)

    respond_to do |format|
      if @prealert.save
        format.html { redirect_to @prealert, notice: 'Prealert was successfully created.' }
        format.json { render :show, status: :created, location: @prealert }
      else
        format.html { render :new }
        format.json { render json: @prealert.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prealerts/1
  # PATCH/PUT /prealerts/1.json
  def update
    respond_to do |format|
      if @prealert.update(prealert_params)
        format.html { redirect_to @prealert, notice: 'Prealert was successfully updated.' }
        format.json { render :show, status: :ok, location: @prealert }
      else
        format.html { render :edit }
        format.json { render json: @prealert.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prealerts/1
  # DELETE /prealerts/1.json
  def destroy
    @prealert.destroy
    respond_to do |format|
      format.html { redirect_to prealerts_url, notice: 'Prealert was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prealert
      @prealert = Prealert.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prealert_params
      params.require(:prealert).permit(:tracking_number, :curier, :shop, :value_price, :description)
    end
end
