class JushosController < ApplicationController
  before_action :set_jusho, only: [:show, :edit, :update, :destroy]
	protect_from_forgery except: :todofuken_select
  # GET /jushos
  # GET /jushos.json
  def index
    @jushos = Jusho.all
  end

  # GET /jushos/1
  # GET /jushos/1.json
  def show
  end

  # GET /jushos/new
  def new
    @jusho = Jusho.new
		@shichosons = [["都道府県を選択してください。", "0"]]
		    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @jusho }
    end
  end
  # GET /jushos/todoufuken_select
  def todofuken_select
		@shichosons = Shichoson.where(todofuken_id: params[:todofuken_id])
		#@shichosons = Shichoson.all

	  respond_to do |format|
			#format.html {render html: @shichosons}
			format.json {render json: @shichosons}
		end
		
  end
  # GET /jushos/1/edit
  def edit
		@shichosons = @jusho.shichoson_id
  end

  # POST /jushos
  # POST /jushos.json
  def create
    @jusho = Jusho.new(jusho_params)

    respond_to do |format|
      if @jusho.save
        format.html { redirect_to @jusho, notice: 'Jusho was successfully created.' }
        format.json { render :show, status: :created, location: @jusho }
      else
        format.html { render :new }
        format.json { render json: @jusho.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jushos/1
  # PATCH/PUT /jushos/1.json
  def update
    respond_to do |format|
      if @jusho.update(jusho_params)
        format.html { redirect_to @jusho, notice: 'Jusho was successfully updated.' }
        format.json { render :show, status: :ok, location: @jusho }
      else
        format.html { render :edit }
        format.json { render json: @jusho.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jushos/1
  # DELETE /jushos/1.json
  def destroy
    @jusho.destroy
    respond_to do |format|
      format.html { redirect_to jushos_url, notice: 'Jusho was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jusho
      @jusho = Jusho.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jusho_params
      params.require(:jusho).permit(:todofuken_id, :shichoson_id, :sonotajusho)
    end
end
