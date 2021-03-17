class DistypesController < ApplicationController
  before_action :set_distype, only: %i[ show edit update destroy ]

  # GET /distypes or /distypes.json
  def index
    @distypes = Distype.all
  end

  # GET /distypes/1 or /distypes/1.json
  def show
  end

  # GET /distypes/new
  def new
    @distype = Distype.new
  end

  # GET /distypes/1/edit
  def edit
  end

  # POST /distypes or /distypes.json
  def create
    @distype = Distype.new(distype_params)

    respond_to do |format|
      if @distype.save
        format.html { redirect_to @distype, notice: "Distype was successfully created." }
        format.json { render :show, status: :created, location: @distype }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @distype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /distypes/1 or /distypes/1.json
  def update
    respond_to do |format|
      if @distype.update(distype_params)
        format.html { redirect_to @distype, notice: "Distype was successfully updated." }
        format.json { render :show, status: :ok, location: @distype }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @distype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /distypes/1 or /distypes/1.json
  def destroy
    @distype.destroy
    respond_to do |format|
      format.html { redirect_to distypes_url, notice: "Distype was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_distype
      @distype = Distype.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def distype_params
      params.require(:distype).permit(:discount_name, :discount_amount, :unit, :start, :end)
    end
end
