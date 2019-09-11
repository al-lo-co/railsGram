Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root to: 'control#zapatica'

  resources :images
  root to: "home#index"

  get 'probar', to: 'control#saludo'


end
