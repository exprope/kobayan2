class ShichosonsController < ApplicationController
  before_action :set_shichoson, only: [:show, :edit, :update, :destroy]

  # GET /shichosons
  # GET /shichosons.json
  def index
    @shichosons = Shichoson.all
  end

  # GET /shichosons/1
  # GET /shichosons/1.json
  def show
  end

  # GET /shichosons/new
  def new
    @shichoson = Shichoson.new
  end

  # GET /shichosons/1/edit
  def edit
  end

  # POST /shichosons
  # POST /shichosons.json
  def create
    @shichoson = Shichoson.new(shichoson_params)

    respond_to do |format|
      if @shichoson.save
        format.html { redirect_to @shichoson, notice: 'Shichoson was successfully created.' }
        format.json { render :show, status: :created, location: @shichoson }
      else
        format.html { render :new }
        format.json { render json: @shichoson.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shichosons/1
  # PATCH/PUT /shichosons/1.json
  def update
    respond_to do |format|
      if @shichoson.update(shichoson_params)
        format.html { redirect_to @shichoson, notice: 'Shichoson was successfully updated.' }
        format.json { render :show, status: :ok, location: @shichoson }
      else
        format.html { render :edit }
        format.json { render json: @shichoson.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shichosons/1
  # DELETE /shichosons/1.json
  def destroy
    @shichoson.destroy
    respond_to do |format|
      format.html { redirect_to shichosons_url, notice: 'Shichoson was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shichoson
      @shichoson = Shichoson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shichoson_params
      params.require(:shichoson).permit(:todofuken_id, :name)
    end
end
