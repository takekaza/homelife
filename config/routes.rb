Rails.application.routes.draw do
  devise_for :users
  root 'homes#index'
  get 'homes/indexes'
  get '/', to: 'homes#index'
  resources :users, only: [:edit, :update]
  resources :abouts, only: :index
  resources :homes
  post "likes/:home_id/create", to: "likes#create", constraints: {home_id: /\d+/}, as: :likes_create
  post "likes/:home_id/delete", to: "likes#delete", constraints: {home_id: /\d+/}, as: :likes_delete
  resources :accounts, only: [:index, :search] do
    collection do
      get 'search'
    end
  end
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
