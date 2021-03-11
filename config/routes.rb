Rails.application.routes.draw do
  root to: "pages#home"
  devise_for :patients
  devise_scope :patient do
    get '/patients/sign_out' => 'devise/sessions#destroy'
  end
  devise_for :medecins, path: 'medecins', controllers: { sessions: "medecins/sessions", registrations: 'medecins/registrations'}
  devise_scope :medecin do
    get '/medecins/sign_out' => 'devise/sessions#destroy'
  end
end
