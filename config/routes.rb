Rails.application.routes.draw do
  root 'items#index'
  devise_for :users
  resources :items, only: :order do
    post 'order', on: :member
  end
end