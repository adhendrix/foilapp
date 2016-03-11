class NamesController < ApplicationController
  before_action :set_name, only: [:show, :edit, :update, :destroy]
  helper_method :sort_column, :sort_direction

  # GET /names
  # GET /names.json
  def index
    @names = Name.order(sort_column + " " + sort_direction)
  end

  # GET /names/1
  # GET /names/1.json
  def show
  end

  # GET /names/new
  def new
    @name = Name.new
    1.times do
      @name.foil_items.build
    end

  end

  # GET /names/1/edit
  def edit
  end

  # POST /names
  # POST /names.json
  def create
    @name = Name.new(name_params)

    respond_to do |format|
      if @name.save
        format.html { redirect_to @name, notice: 'Name was successfully created.' }
        format.json { render :show, status: :created, location: @name }
      else
        format.html { render :new }
        format.json { render json: @name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /names/1
  # PATCH/PUT /names/1.json
  def update
    respond_to do |format|
      if @name.update(name_params)
        format.html { redirect_to @name, notice: 'Name was successfully updated.' }
        format.json { render :show, status: :ok, location: @name }
      else
        format.html { render :edit }
        format.json { render json: @name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /names/1
  # DELETE /names/1.json
  def destroy
    @name.destroy
    respond_to do |format|
      format.html { redirect_to names_url, notice: 'Name was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def sort_column
      Name.column_names.include?(params[:sort]) ? params[:sort] : "foil_name"
    end
    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_name
      @name = Name.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def name_params
      params.require(:name).permit(:foil_name, :pigment_code, foil_items_attributes: [:_destroy, :id, :length_id, :make_id, :foil_used_length])
    end
end
