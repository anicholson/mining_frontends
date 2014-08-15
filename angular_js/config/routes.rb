Rails.application.routes.draw do
  namespace :api do
  get 'world/show'
  end

  root to: 'home#home'

  namespace :api do

  end
end
