Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  authenticate :user do
    resources :islands, only: [:new, :create, :edit, :update, :delete] do
      resources :bookings, only: [:index, :show, :new, :create]
    end
  end

  resources :islands, only: [:index, :show]
  get '/users/:id', to: 'users#show', as: :user
end
