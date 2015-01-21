class TodofukensController < ApplicationController
  before_action :set_todofuken, only: [:show, :edit, :update, :destroy]

  # GET /todofukens
  # GET /todofukens.json
  def index
    @todofukens = Todofuken.all
  end

  # GET /todofukens/1
  # GET /todofukens/1.json
  def show
  end

  # GET /todofukens/new
  def new
    @todofuken = Todofuken.new
  end

  # GET /todofukens/1/edit
  def edit
  end

  # POST /todofukens
  # POST /todofukens.json
  def create
    @todofuken = Todofuken.new(todofuken_params)

    respond_to do |format|
      if @todofuken.save
        format.html { redirect_to @todofuken, notice: 'Todofuken was successfully created.' }
        format.json { render :show, status: :created, location: @todofuken }
      else
        format.html { render :new }
        format.json { render json: @todofuken.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /todofukens/1
  # PATCH/PUT /todofukens/1.json
  def update
    respond_to do |format|
      if @todofuken.update(todofuken_params)
        format.html { redirect_to @todofuken, notice: 'Todofuken was successfully updated.' }
        format.json { render :show, status: :ok, location: @todofuken }
      else
        format.html { render :edit }
        format.json { render json: @todofuken.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /todofukens/1
  # DELETE /todofukens/1.json
  def destroy
    @todofuken.destroy
    respond_to do |format|
      format.html { redirect_to todofukens_url, notice: 'Todofuken was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todofuken
      @todofuken = Todofuken.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def todofuken_params
      params.require(:todofuken).permit(:name)
    end
end
