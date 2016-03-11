class FoilCalculatorsController < ApplicationController
  before_action :set_foil_calculator, only: [:show, :edit, :update, :destroy]

  # GET /foil_calculators
  # GET /foil_calculators.json
  def index
    @foil_calculators = FoilCalculator.all
  end

  # GET /foil_calculators/1
  # GET /foil_calculators/1.json
  def show
  end

  # GET /foil_calculators/new
  def new
    @foil_calculator = FoilCalculator.new
  end

  # GET /foil_calculators/1/edit
  def edit
  end

  # POST /foil_calculators
  # POST /foil_calculators.json
  def create
    @foil_calculator = FoilCalculator.new(foil_calculator_params)

    respond_to do |format|
      if @foil_calculator.save
        format.html { redirect_to @foil_calculator, notice: 'Foil calculator was successfully created.' }
        format.json { render :show, status: :created, location: @foil_calculator }
      else
        format.html { render :new }
        format.json { render json: @foil_calculator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foil_calculators/1
  # PATCH/PUT /foil_calculators/1.json
  def update
    respond_to do |format|
      if @foil_calculator.update(foil_calculator_params)
        format.html { redirect_to @foil_calculator, notice: 'Foil calculator was successfully updated.' }
        format.json { render :show, status: :ok, location: @foil_calculator }
      else
        format.html { render :edit }
        format.json { render json: @foil_calculator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foil_calculators/1
  # DELETE /foil_calculators/1.json
  def destroy
    @foil_calculator.destroy
    respond_to do |format|
      format.html { redirect_to foil_calculators_url, notice: 'Foil calculator was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foil_calculator
      @foil_calculator = FoilCalculator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def foil_calculator_params
      params.require(:foil_calculator).permit(:sheet_quantity, :sheets_per_parent_sheet, :inches_per_parent_sheet)
    end
end
