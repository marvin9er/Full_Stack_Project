Rails.application.routes.draw do
  get 'about/index'
  root to: 'about#index'
  resources :languages
  resources :traits
  resources :subraces
  resources :races
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
