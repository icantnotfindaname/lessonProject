class PitsController < ApplicationController
  before_action :set_pit, only: [:show, :edit, :update, :destroy]

  # GET /pits
  # GET /pits.json
  def index
    @pits = Pit.all
  end

  # GET /pits/1
  # GET /pits/1.json
  def show
  end

  # GET /pits/new
  def new
    @pit = Pit.new
  end

  # GET /pits/1/edit
  def edit
  end

  # POST /pits
  # POST /pits.json
  def create
    @pit = Pit.new(pit_params)

    respond_to do |format|
      if @pit.save
        format.html { redirect_to @pit, notice: 'Pit was successfully created.' }
        format.json { render :show, status: :created, location: @pit }
      else
        format.html { render :new }
        format.json { render json: @pit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pits/1
  # PATCH/PUT /pits/1.json
  def update
    respond_to do |format|
      if @pit.update(pit_params)
        format.html { redirect_to @pit, notice: 'Pit was successfully updated.' }
        format.json { render :show, status: :ok, location: @pit }
      else
        format.html { render :edit }
        format.json { render json: @pit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pits/1
  # DELETE /pits/1.json
  def destroy
    @pit.destroy
    respond_to do |format|
      format.html { redirect_to pits_url, notice: 'Pit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pit
      @pit = Pit.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pit_params
      params.require(:pit).permit(:position, :size, :pid, :pnum, :state, :time, :usage, :cost)
    end
end
