class ItesController < ApplicationController
  before_action :set_ite, only: [:show, :edit, :update, :destroy]

  # GET /ites
  # GET /ites.json
  def index
    @ites = Ite.all
  end

  # GET /ites/1
  # GET /ites/1.json
  def show
  end

  # GET /ites/new
  def new
    @ite = Ite.new
  end

  # GET /ites/1/edit
  def edit
  end

  # POST /ites
  # POST /ites.json
  def create
    @ite = Ite.new(ite_params)

    respond_to do |format|
      if @ite.save
        format.html { redirect_to @ite, notice: 'Ite was successfully created.' }
        format.json { render :show, status: :created, location: @ite }
      else
        format.html { render :new }
        format.json { render json: @ite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ites/1
  # PATCH/PUT /ites/1.json
  def update
    respond_to do |format|
      if @ite.update(ite_params)
        format.html { redirect_to @ite, notice: 'Ite was successfully updated.' }
        format.json { render :show, status: :ok, location: @ite }
      else
        format.html { render :edit }
        format.json { render json: @ite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ites/1
  # DELETE /ites/1.json
  def destroy
    @ite.destroy
    respond_to do |format|
      format.html { redirect_to ites_url, notice: 'Ite was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ite
      @ite = Ite.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ite_params
      params.require(:ite).permit(:edifici_id, :existeix, :itexml)
    end
end
