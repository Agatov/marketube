VideoMarketing::Application.routes.draw do
  root to: 'application#index'

  resources :orders, only: :create

  resources :simple, controller: 'simple'
end
