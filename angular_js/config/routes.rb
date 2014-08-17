Rails.application.routes.draw do
  root to: 'home#home'

  namespace :api do
  	resources :world, only: [:index, :show]
  end
end
