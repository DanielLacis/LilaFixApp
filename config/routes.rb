Rails.application.routes.draw do
  root to: 'static_pages#root'
  
  resource :session, only: [:new, :create, :destroy]
  resources :users
  resources :children

  namespace :api do
    resources :children do
      resources :posts, only: [:index]
    end

    resources :posts, except: [:index]
  end
end
