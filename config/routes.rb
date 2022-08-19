Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :outfits, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:create]
    resources :reviews, only: [:create]
  end
  resources :bookings, only: [:index, :update]
  namespace :owner do
    resources :bookings, only: :index
  end
end
