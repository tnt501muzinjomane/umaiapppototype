class RtablesController < ApplicationController
before_action :authenticate_user!
  before_action :set_rtable, only: [:show, :edit, :update, :destroy]

  # GET /rtables
  # GET /rtables.json
  def index
    @rtables = Rtable.all
  end

  # GET /rtables/1
  # GET /rtables/1.json
  def show
  end

  # GET /rtables/new
  def new
    @rtable = Rtable.new
    @restaurant = Restaurant.all
  end

  # GET /rtables/1/edit
  def edit
  end

  # POST /rtables
  # POST /rtables.json
  def create
    @rtable = Rtable.new(rtable_params)

    respond_to do |format|
      if @rtable.save
        format.html { redirect_to @rtable, notice: 'Rtable was successfully created.' }
        format.json { render :show, status: :created, location: @rtable }
      else
        format.html { render :new }
        format.json { render json: @rtable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rtables/1
  # PATCH/PUT /rtables/1.json
  def update
    respond_to do |format|
      if @rtable.update(rtable_params)
        format.html { redirect_to @rtable, notice: 'Rtable was successfully updated.' }
        format.json { render :show, status: :ok, location: @rtable }
      else
        format.html { render :edit }
        format.json { render json: @rtable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rtables/1
  # DELETE /rtables/1.json
  def destroy
    @rtable.destroy
    respond_to do |format|
      format.html { redirect_to rtables_url, notice: 'Rtable was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rtable
      @rtable = Rtable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rtable_params
      params.require(:rtable).permit(:name, :min_guest, :max_guest, :restaurant_id)
    end
end
