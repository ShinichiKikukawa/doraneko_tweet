Rails.application.routes.draw do
  get 'users/index'

  root 'home#top'
  get 'top', to: 'home#top'
  get 'about', to: 'home#about'
  get 'posts/new', to: 'posts#new'
  post 'posts/create', to: 'posts#create'
  get 'posts/index', to: 'posts#index'
  get 'posts/:id', to: 'posts#show', as: :post
  get 'posts/:id/edit', to: 'posts#edit', as: :edit_post
  post 'posts/:id/update', to: 'posts#update', as: :update_post
  post 'posts/:id/destroy', to: 'posts#destroy', as: :destroy_post
  get 'login', to: 'users#login_page'
  post 'login', to: 'users#login'
  post 'logout', to: 'users#logout'

 resources :users
end
