CleanWeb::Application.routes.draw do
  resources :usages
  get '/calculation', to: 'calculation#new'
  post '/calculation', to: 'calculation#create'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  devise_scope :user do
    get '/users/sign_out', to: 'devise/sessions#destroy'
  end

  get '/home', to: 'home#home'

  root to: "home#index"
end
