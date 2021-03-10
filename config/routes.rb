Rails.application.routes.draw do
  devise_for :patients
  devise_scope :patient do
    get '/patients/sign_out' => 'devise/sessions#destroy'
  end
  root to: "pages#home"
end
