Timelife::Application.routes.draw do


  get "days/show"
  get "days/create"

  get "log_in" => "sessions#new", :as => "log_in"
  get "log_out" => "sessions#destroy", :as => "log_out"
  get "sign_up" => "users#new", :as => "sign_up"

  root 'users#new'


  resources :users
  resources :trips

  resources :days

  resources :sessions

end
