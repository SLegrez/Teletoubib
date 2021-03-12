class CreneauxController < ApplicationController
    before_action :set_creneau, only: [:show, :edit, :update, :destroy]
  
    def dashboard
      @creneaux = Creneau.all
    end
    
    def show
    end
  
    def new # GET
      @creneau = Creneau.new
    end
    
    def create # POST
      @creneau = Creneau.new(creneau_params)
      @creneau.patient_id = current_patient.id
      @creneau.save
  
      redirect_to dashboard_path
    end
  
    def edit # GET
    end
  
    def update # PATCH
      @creneau.update(creneau_params)
  
      redirect_to dashboard_path
    end
  
    def destroy # Destroy a-t-il une utilité ici ? Il faudrait garder une trace des créneaux
      @creneau.destroy
  
      redirect_to dashboard_path
    end
    
    private
  
    def creneau_params
      params.require(:creneau).permit(:disponible, :indisponible, :medecin_id)
    end
  
    def set_creneau
      @creneau = Creneau.find(params[:id])
    end
      
end
