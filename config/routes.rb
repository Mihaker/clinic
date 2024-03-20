# frozen_string_literal: true

Rails.application.routes.draw do
 

  devise_for :doctors, controllers: { 
    registrations: 'doctors/registrations',
    sessions: 'doctors/sessions'
  }
  
  devise_for :users, controllers: { 
    registrations: 'users/registrations' 
  }

  root "home#index"

  resources :users, only: :show
  resources :doctors, only: :show
  
end
