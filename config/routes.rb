Rails.application.routes.draw do
  devise_for :users , controllers:{
    confirmations:'confirmations',
    registrations:'registrations'
  }
  get '/pop' => 'posts#new'
  post '/pop' => 'posts#create'
  get '/feed' => 'users#feed'
  put '/posts/:id/like' => 'posts#like' , as: 'like'
  post '/posts/:id/comment' => 'posts#comment' , as:'comment'
  get '/users/:id' => 'users#show' , as:"profile"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'users#feed'
  get '/m' => 'messages#index'
  resources :posts , only:[:show]
  resources :messages , only:[:create , :new]

end
