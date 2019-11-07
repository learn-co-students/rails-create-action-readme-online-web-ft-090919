Rails.application.routes.draw do
  resources :posts, only: [:index, :new]
  get '/posts', to: 'posts#index'
  get '/posts/new', to: 'posts#new' 
  get '/posts/:id', to: 'posts#show', as: 'post'
  post '/posts', to: 'posts#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
