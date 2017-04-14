Rails.application.routes.draw do
  devise_for :users
  root to: 'tools#index'
  resources :tools do
    member do
      post :checked_out_tool
    end
  end
  resources :rentals
  # post '/checked_out_tool', to: 'tools#checked_out_tool', as: :checked_out
  post '/return_tool', to: 'tools#return_tool', as: :return_tool
end
