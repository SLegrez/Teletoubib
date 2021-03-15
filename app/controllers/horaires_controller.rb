class HorairesController < ApplicationController
  before_action :set_horaire, only: [:show, :edit, :update, :destroy]

  def index
    @horaires = current_medecin.horaires
    # Code pour simple_calendar
    # Scope your query to the dates being shown:
    start_date = params.fetch(:start_date, Date.today).to_date
    @consultations = current_medecin.horaires.where(debut: start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week)
  end

  def show
  end

  def new # GET
    @horaire = Horaire.new
  end

  def create # POST
    @horaire = Horaire.new(horaire_params)
    @horaire.medecin_id = current_medecin.id

    if @horaire.save
      redirect_to horaires_path
    else
      render :new
    end
  end

  def edit # GET
  end

  def update # PATCH
    @horaire.update(horaire_params)

    redirect_to horaires_path
  end

  def destroy # Destroy a-t-il une utilité ici ? Il faudrait garder une trace des créneaux
    @horaire.destroy

    redirect_to horaires_path
  end

  private

  def horaire_params
    params.require(:horaire).permit(:disponible, :indisponible, :medecin_id, :date, :debut, :fin)
  end

  def set_horaire
    @horaire = Horaire.find(params[:id])
  end
    
end
