Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "pages#home"
  get :book, to: 'pages#book'
  get :about, to: 'pages#about'
  get :contact, to: 'pages#contact'
  get :studios, to: 'pages#studios'
  get :membership, to: 'pages#membership'


end
