Rails.application.routes.draw do
  get 'welcome/index'

  resources :cuisines
  resources :areas
  resources :restraunts

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
