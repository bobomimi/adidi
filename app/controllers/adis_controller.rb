class AdisController < ApplicationController
  before_action :set_adi, only: [:show, :edit, :update, :destroy]

  # GET /adis
  # GET /adis.json
  def index
    @adis = Adi.all
  end

  # GET /adis/1
  # GET /adis/1.json
  def show
  end

  # GET /adis/new
  def new
    @adi = Adi.new
  end

  # GET /adis/1/edit
  def edit
  end

  # POST /adis
  # POST /adis.json
  def create
    @adi = Adi.new(adi_params)

    respond_to do |format|
      if @adi.save
        format.html { redirect_to @adi, notice: 'Adi was successfully created.' }
        format.json { render :show, status: :created, location: @adi }
      else
        format.html { render :new }
        format.json { render json: @adi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adis/1
  # PATCH/PUT /adis/1.json
  def update
    respond_to do |format|
      if @adi.update(adi_params)
        format.html { redirect_to @adi, notice: 'Adi was successfully updated.' }
        format.json { render :show, status: :ok, location: @adi }
      else
        format.html { render :edit }
        format.json { render json: @adi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adis/1
  # DELETE /adis/1.json
  def destroy
    @adi.destroy
    respond_to do |format|
      format.html { redirect_to adis_url, notice: 'Adi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adi
      @adi = Adi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adi_params
      params.require(:adi).permit(:name)
    end
end
