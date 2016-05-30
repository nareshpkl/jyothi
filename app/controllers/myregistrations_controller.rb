class MyregistrationsController < ApplicationController
  before_action :set_myregistration, only: [:show, :edit, :update, :destroy]

  # GET /myregistrations
  # GET /myregistrations.json
  def index
    @myregistrations = Myregistration.all
  end

  # GET /myregistrations/1
  # GET /myregistrations/1.json
  def show
  end

  # GET /myregistrations/new
  def new
    @myregistration = Myregistration.new
  end

  # GET /myregistrations/1/edit
  def edit
  end

  # POST /myregistrations
  # POST /myregistrations.json
  def create
    @myregistration = Myregistration.new(myregistration_params)

    respond_to do |format|
      if @myregistration.save
        format.html { redirect_to @myregistration, notice: 'Myregistration was successfully created.' }
        format.json { render :show, status: :created, location: @myregistration }
      else
        format.html { render :new }
        format.json { render json: @myregistration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /myregistrations/1
  # PATCH/PUT /myregistrations/1.json
  def update
    respond_to do |format|
      if @myregistration.update(myregistration_params)
        format.html { redirect_to @myregistration, notice: 'Myregistration was successfully updated.' }
        format.json { render :show, status: :ok, location: @myregistration }
      else
        format.html { render :edit }
        format.json { render json: @myregistration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /myregistrations/1
  # DELETE /myregistrations/1.json
  def destroy
    @myregistration.destroy
    respond_to do |format|
      format.html { redirect_to myregistrations_url, notice: 'Myregistration was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_myregistration
      @myregistration = Myregistration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def myregistration_params
      params.require(:myregistration).permit(:name, :email, :cell, :gender, :category, :subject)
    end
end
