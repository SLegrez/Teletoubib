class ApplicationController < ActionController::Base
  before_action :authenticate_patient!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:prenom, :nom])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:prenom, :nom, :date_de_naissance, :adresse, :telephone, :code_postal, :ville])
  end
end
