Rails.application.routes.draw do
  root to: "pages#home"
  get 'dashboard', to: 'pages#dashboard'

  devise_for :patients
  devise_scope :patient do
    get '/patients/sign_out' => 'devise/sessions#destroy'
  end

  resources :horaires

  devise_for :medecins
  devise_scope :medecin do
    get '/medecins/sign_out' => 'devise/sessions#destroy'
  end
end
