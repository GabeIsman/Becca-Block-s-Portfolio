Becca::Application.routes.draw do
  resources :art
  resources :pages
  resources :designs
  resources :images
  resources :users

  root :to => "pages#about"
  match "about" => "pages#about"
  match "log_in" => "sessions#new"
  match "log_out" => "sessions#destroy"
  post "sessions/create"

end
