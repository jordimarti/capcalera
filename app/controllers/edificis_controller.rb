class EdificisController < ApplicationController
  before_action :set_edifici, only: [:show, :edit, :update, :destroy]

  # GET /edificis
  # GET /edificis.json
  def index
    @edificis = Edifici.all
  end

  # GET /edificis/1
  # GET /edificis/1.json
  def show
  end

  # GET /edificis/new
  def new
    @edifici = Edifici.new
  end

  # GET /edificis/1/edit
  def edit
  end

  # POST /edificis
  # POST /edificis.json
  def create
    @edifici = Edifici.new(edifici_params)

    respond_to do |format|
      if @edifici.save
        format.html { redirect_to @edifici, notice: 'Edifici was successfully created.' }
        format.json { render :show, status: :created, location: @edifici }
      else
        format.html { render :new }
        format.json { render json: @edifici.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /edificis/1
  # PATCH/PUT /edificis/1.json
  def update
    respond_to do |format|
      if @edifici.update(edifici_params)
        format.html { redirect_to @edifici, notice: 'Edifici was successfully updated.' }
        format.json { render :show, status: :ok, location: @edifici }
      else
        format.html { render :edit }
        format.json { render json: @edifici.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /edificis/1
  # DELETE /edificis/1.json
  def destroy
    @edifici.destroy
    respond_to do |format|
      format.html { redirect_to edificis_url, notice: 'Edifici was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_edifici
      @edifici = Edifici.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def edifici_params
      params.require(:edifici).permit(:user_id, :nom_edifici, :tipus_edifici)
    end
end
