
Rails.application.routes.draw do
  devise_for :users
  root to: 'users#index'
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end
  resources :users
  resources :chats
  resources :messages
end
