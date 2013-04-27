Pseudochat::Application.routes.draw do
  root :to => "pages#index"

  get "signup" => "signups#new", :as => :signup
  post "signup" => "signups#create"

  get "signin" => "sessions#new", :as => :signin
  post "signin" => "sessions#create"
  get "signout" => "sessions#destroy", :as => :signout
end
