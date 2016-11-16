Rails.application.routes.draw do

  root 'appointments#index'

  resources :appointments
  resources :patients
  resources :doctors
end
