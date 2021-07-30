Rails.application.routes.draw do
  root 'ships#index'
  devise_for :users

  resources :ships do
    get 'update_queue', on: :member
    get 'ships_queue', on: :collection
  end
end
