Rails.application.routes.draw do
  root to: "pages#home"

  devise_for :patients
  devise_scope :patient do
    get '/patients/sign_out' => 'devise/sessions#destroy'
  end

  get 'medecins/dashboard', to: 'pages#dashboard'
  resources :medecins do
    resources :creneaux
  end
  devise_for :medecins
  devise_scope :medecin do
    get '/medecins/sign_out' => 'devise/sessions#destroy'
  end
end
