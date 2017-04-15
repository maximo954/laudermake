Rails.application.routes.draw do
  devise_for :users
  root to: 'tools#index'
  resources :tools do
    member do
      post :checked_out_tool
      post :return_tool
    end
  end
  resources :rentals
  
end
