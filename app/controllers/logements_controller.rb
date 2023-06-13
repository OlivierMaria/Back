class LogementsController < ApplicationController
  before_action :set_logement, only: %i[ show update destroy ]

  # GET /logements
  def index
    @logements = Logement.all

    render json: @logements
  end

  # GET /logements/1
  def show
    render json: @logement
  end

  # POST /logements
  def create
    @logement = Logement.new(logement_params)

    if @logement.save
      render json: @logement, status: :created, location: @logement
    else
      render json: @logement.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /logements/1
  def update
    if @logement.update(logement_params)
      render json: @logement
    else
      render json: @logement.errors, status: :unprocessable_entity
    end
  end

  # DELETE /logements/1
  def destroy
    @logement.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_logement
      @logement = Logement.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def logement_params
      params.require(:logement).permit(:title, :description, :price, :surface, :rooms, :category, :user_id)
    end
end
