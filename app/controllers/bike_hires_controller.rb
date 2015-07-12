class BikeHiresController < ApplicationController
  before_action :set_bike_hire, only: [:show, :edit, :update, :destroy]

  # GET /bike_hires
  # GET /bike_hires.json
  def index
    @bike_hires = BikeHire.all
  end

  # GET /bike_hires/1
  # GET /bike_hires/1.json
  def show
  end

  # GET /bike_hires/new
  def new
    @bike_hire = BikeHire.new
  end

  # GET /bike_hires/1/edit
  def edit
  end

  # POST /bike_hires
  # POST /bike_hires.json
  def create
    @bike_hire = BikeHire.new(bike_hire_params)

    respond_to do |format|
      if @bike_hire.save
        format.html { redirect_to @bike_hire, notice: 'Bike hire was successfully created.' }
        format.json { render :show, status: :created, location: @bike_hire }
      else
        format.html { render :new }
        format.json { render json: @bike_hire.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bike_hires/1
  # PATCH/PUT /bike_hires/1.json
  def update
    respond_to do |format|
      if @bike_hire.update(bike_hire_params)
        format.html { redirect_to @bike_hire, notice: 'Bike hire was successfully updated.' }
        format.json { render :show, status: :ok, location: @bike_hire }
      else
        format.html { render :edit }
        format.json { render json: @bike_hire.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bike_hires/1
  # DELETE /bike_hires/1.json
  def destroy
    @bike_hire.destroy
    respond_to do |format|
      format.html { redirect_to bike_hires_url, notice: 'Bike hire was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bike_hire
      @bike_hire = BikeHire.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bike_hire_params
      params.require(:bike_hire).permit(:name, :price, :manufacturer, :image)
    end
end
