Rails.application.routes.draw do
  devise_for :users
  root to: 'tools#index'
  resources :tools do
    member do
      post :checked_out
      post :return
    end
  end
  resources :rentals

end
