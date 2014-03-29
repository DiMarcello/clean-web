CleanWeb::Application.routes.draw do
  resources :usages

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  get '/home', to: 'home#home'

  root to: "home#index"
end
