class AdvideosController < ApplicationController
  before_action :set_advideo, only: [:show, :edit, :update, :destroy]

  # GET /advideos
  # GET /advideos.json
  def index
    @advideos = Advideo.all
  end

  # GET /advideos/1
  # GET /advideos/1.json
  def show
    @advideo = Advideo.find params[:id]
  end

  # GET /advideos/new
  def new
    @advideo = Advideo.new
  end

  # GET /advideos/1/edit
  def edit
  end

  # POST /advideos
  # POST /advideos.json
  def create
    @advideo = Advideo.new(advideo_params)

    respond_to do |format|
      if @advideo.save
        format.html { redirect_to @advideo, notice: 'Advideo was successfully created.' }
        format.json { render :show, status: :created, location: @advideo }
      else
        format.html { render :new }
        format.json { render json: @advideo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /advideos/1
  # PATCH/PUT /advideos/1.json
  def update
    respond_to do |format|
      if @advideo.update(advideo_params)
        format.html { redirect_to @advideo, notice: 'Advideo was successfully updated.' }
        format.json { render :show, status: :ok, location: @advideo }
      else
        format.html { render :edit }
        format.json { render json: @advideo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /advideos/1
  # DELETE /advideos/1.json
  def destroy
    @advideo.destroy
    respond_to do |format|
      format.html { redirect_to advideos_url, notice: 'Advideo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_advideo
      @advideo = Advideo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def advideo_params     
      params.require(:advideo).permit :file
    end
end
