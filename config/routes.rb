Rails.application.routes.draw do
  get 'users/show'
  root to: "homes#top"
  devise_for :users

  devise_scope :user do
   get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :books, only: [:create, :index, :show]
  resources :users, only: [:show, :edit]

  get "homes/about" => "homes#about", as: "about"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
