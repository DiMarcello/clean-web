CleanWeb::Application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  get '/home', to: 'home#home'

  root to: "home#index"
end
