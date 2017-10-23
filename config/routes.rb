Rails.application.routes.draw do
  root 'high_five#index'

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :users, only: [ :edit, :update, :destroy ] do
    resource :palm_information
  end

  get '/entry', to: 'high_five#entry'
  get '/reading', to: 'high_five#reading'
end
