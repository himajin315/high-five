Rails.application.routes.draw do
  devise_for :users,
      controllers: {
        omniauth_callbacks: 'users/omniauth_callbacks'
      }
  root 'high_five#index'

  get '/entory', to: 'high_five#entory'
end
