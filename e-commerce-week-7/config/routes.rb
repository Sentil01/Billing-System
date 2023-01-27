Rails.application.routes.draw do

  resources :products do
    resources :comments

  end
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  resources :users, only: [:show]

  root 'categories#index'
  resources :categories do
    resources :products do
      post 'read', on: :member
      resources :variants
      resources :ratings
    end
  end
  get '/products' => 'products#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
