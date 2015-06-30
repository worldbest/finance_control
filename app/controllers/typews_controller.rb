class TypewsController < ApplicationController
  before_action :set_typew, only: [:show, :edit, :update, :destroy]

  # GET /typews
  # GET /typews.json
  def index
    @typews = Typew.all
  end

  # GET /typews/1
  # GET /typews/1.json
  def show
  end

  # GET /typews/new
  def new
    @typew = Typew.new
  end

  # GET /typews/1/edit
  def edit
  end

  # POST /typews
  # POST /typews.json
  def create
    @typew = Typew.new(typew_params)

    respond_to do |format|
      if @typew.save
        format.html { redirect_to @typew, notice: 'Typew was successfully created.' }
        format.json { render :show, status: :created, location: @typew }
      else
        format.html { render :new }
        format.json { render json: @typew.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /typews/1
  # PATCH/PUT /typews/1.json
  def update
    respond_to do |format|
      if @typew.update(typew_params)
        format.html { redirect_to @typew, notice: 'Typew was successfully updated.' }
        format.json { render :show, status: :ok, location: @typew }
      else
        format.html { render :edit }
        format.json { render json: @typew.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /typews/1
  # DELETE /typews/1.json
  def destroy
    @typew.destroy
    respond_to do |format|
      format.html { redirect_to typews_url, notice: 'Typew was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_typew
      @typew = Typew.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def typew_params
      params.require(:typew).permit(:name)
    end
end
