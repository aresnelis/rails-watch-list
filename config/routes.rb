Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'lists#index'
  resources :lists, only: [:show, :new, :create] do
    resources :bookmarks, only: [:new, :create, :destroy]
  end
  # resources :bookmarks, only: [:destroy]
  # Defines the root path route ("/")
  # root "articles#index"
end
