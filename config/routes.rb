Rails.application.routes.draw do
  root to: 'static_pages#home'
  resources :articles do
    resources :comments
  end
  resources :tags
  resources :authors
  resources :author_sessions, only: [ :new, :create, :destroy ]

  get 'login'   =>  'author_sessions#new'
  get 'logout'  =>  'author_sessions#destroy'
  get 'about'   =>  'static_pages#about'
  get 'games'   =>  'static_pages#games'


end
