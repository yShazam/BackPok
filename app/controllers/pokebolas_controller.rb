class PokebolasController < ApplicationController
  before_action :set_pokebola, only: [:show, :edit, :update, :destroy]

  # GET /pokebolas
  # GET /pokebolas.json
  def index
    @pokebolas = Pokebola.all
  end

  # GET /pokebolas/1
  # GET /pokebolas/1.json
  def show
  end

  # GET /pokebolas/new
  def new
    @pokebola = Pokebola.new
  end

  # GET /pokebolas/1/edit
  def edit
  end

  # POST /pokebolas
  # POST /pokebolas.json
  def create
    @pokebola = Pokebola.new(pokebola_params)

    respond_to do |format|
      if @pokebola.save
        format.html { redirect_to @pokebola, notice: 'Pokebola was successfully created.' }
        format.json { render :show, status: :created, location: @pokebola }
      else
        format.html { render :new }
        format.json { render json: @pokebola.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pokebolas/1
  # PATCH/PUT /pokebolas/1.json
  def update
    respond_to do |format|
      if @pokebola.update(pokebola_params)
        format.html { redirect_to @pokebola, notice: 'Pokebola was successfully updated.' }
        format.json { render :show, status: :ok, location: @pokebola }
      else
        format.html { render :edit }
        format.json { render json: @pokebola.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pokebolas/1
  # DELETE /pokebolas/1.json
  def destroy
    @pokebola.destroy
    respond_to do |format|
      format.html { redirect_to pokebolas_url, notice: 'Pokebola was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pokebola
      @pokebola = Pokebola.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pokebola_params
      params.require(:pokebola).permit(:nome, :caracteristica)
    end
end
