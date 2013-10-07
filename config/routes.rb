Timelife::Application.routes.draw do



  # get "days/show"
  # get "days/create"
  # get '/:username/profile', to: 'user#show'

  # get "log_in" => "sessions#new", :as => "log_in"
  # get "log_out" => "sessions#destroy", :as => "log_out"
  # get "sign_up" => "users#new", :as => "sign_up"

  root 'users#new'
  get ":user_name" => "trips#index"
  get ":user_name/:trip_id" => "trips#show"
  get ":user_name/:trip_ip/" => "trips#show"
  get ":user_name/:trip_ip/:day" => "days#index"

  # resources :trips, :only => [:show, :index]
  # resources :users
  # resources :days
  # resources :sessions

end
