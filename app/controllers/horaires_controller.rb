class HorairesController < ApplicationController
  before_action :set_horaire, only: [:show, :edit, :update, :destroy]

  def index
    @horaires = current_medecin.horaires
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

    redirect_to dashboard_path
  end

  def destroy # Destroy a-t-il une utilité ici ? Il faudrait garder une trace des créneaux
    @horaire.destroy

    redirect_to dashboard_path
  end

  private

  def horaire_params
    params.require(:horaire).permit(:disponible, :indisponible, :medecin_id, :date, :debut, :fin)
  end

  def set_horaire
    @horaire = Horaire.find(params[:id])
  end
    
end
