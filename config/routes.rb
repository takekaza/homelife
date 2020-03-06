Rails.application.routes.draw do
  root 'homes#index'
  get 'homes/indexes'
  get '/', to: 'homes#index'
  resources :users, only: [:edit, :update]
  resources :abouts, only: :index
  resources :homes do
    collection do
      get 'search'
    end
  end
  post "likes/:home_id/create", to: "likes#create", constraints: {home_id: /\d+/}, as: :likes_create
  delete "likes/:home_id/delete", to: "likes#delete", constraints: {home_id: /\d+/}, as: :likes_delete

  resources :accounts, only: [:index, :search] do
    
  end

  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  } 
  devise_scope :user do
    get "sign_in", :to => "users/sessions#new"
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
