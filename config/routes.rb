Rails.application.routes.draw do
  resources :career_stats
  devise_for :users
  resources :teams
  root 'teams#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
