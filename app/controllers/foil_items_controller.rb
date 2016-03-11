class FoilItemsController < ApplicationController
  before_action :set_foil_item, only: [:show, :edit, :update, :destroy]

  # GET /foil_items
  # GET /foil_items.json
  def index
    @foil_items = FoilItem.all
  end

  # GET /foil_items/1
  # GET /foil_items/1.json
  def show
  end

  # GET /foil_items/new
  def new
    @foil_item = FoilItem.new
  end

  # GET /foil_items/1/edit
  def edit
  end

  # POST /foil_items
  # POST /foil_items.json
  def create
    @foil_item = FoilItem.new(foil_item_params)

    respond_to do |format|
      if @foil_item.save
        format.html { redirect_to @foil_item, notice: 'Foil item was successfully created.' }
        format.json { render :show, status: :created, location: @foil_item }
      else
        format.html { render :new }
        format.json { render json: @foil_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foil_items/1
  # PATCH/PUT /foil_items/1.json
  def update
    respond_to do |format|
      if @foil_item.update(foil_item_params)
        format.html { redirect_to @foil_item, notice: 'Foil item was successfully updated.' }
        format.json { render :show, status: :ok, location: @foil_item }
      else
        format.html { render :edit }
        format.json { render json: @foil_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foil_items/1
  # DELETE /foil_items/1.json
  def destroy
    @foil_item.destroy
    respond_to do |format|
      format.html { redirect_to foil_items_url, notice: 'Foil item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foil_item
      @foil_item = FoilItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def foil_item_params
      params.require(:foil_item).permit(:foil_used_length, :name_id, :make_id, :length_id)
    end
end
