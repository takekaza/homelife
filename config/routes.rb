Rails.application.routes.draw do
  devise_for :users
  root 'homes#index'
  get 'homes/indexes'
  get '/', to: 'homes#index'
  resources :users, only: [:edit, :update]
  resources :abouts, only: :index
  resources :homes
  resources :accounts, only: [:index, :search] do
    collection do
      get 'search'
    end
  end
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
