Timelife::Application.routes.draw do

  get "users/new"
  get "sign_up" => "users#new", :as => "sign_up"
  root 'users#new'
  resources :users

end
