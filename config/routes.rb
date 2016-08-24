# frozen_string_literal: true
Rails.application.routes.draw do
  # Information for the application
  get 'info',  to: 'information#info'
  get 'help',  to: 'information#help'
  get 'about', to: 'information#about'
  # Temporary root
  root to: "information#about"
  # Resources for Rooms and Shifts
  resources :rooms do
    resources :shifts, shallow: true
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end