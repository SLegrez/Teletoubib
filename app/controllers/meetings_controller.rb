class MeetingsController < ApplicationController
  before_action :set_meeting, only: [:show, :edit, :update, :destroy]

  def index
    @meetings = Meeting.all
  end
  
  def show
  end

  def new # GET
    @meeting = Meeting.new
  end
  
  def create # POST
    @meeting = Meeting.new(meeting_params)
    @meeting.patient_id = current_patient.id
    @meeting.save

    redirect_to dashboard_path
  end

  def edit # GET
  end

  def update # PATCH
    @meeting.update(meeting_params)

    redirect_to dashboard_path
  end

  def destroy # Destroy a-t-il une utilité ici ? Il faudrait garder une trace des rdv
    @meeting.destroy

    redirect_to dashboard_path
  end
  
  private

  def meeting_params
    params.require(:meeting).permit(:style, :lien_visio, :debut, :fin, :patient_id, :horaire_id)
  end

  def set_meeting
    @meeting = Meeting.find(params[:id])
  end
  
end
