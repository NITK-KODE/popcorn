Rails.application.routes.draw do
  devise_for :users
  post '/pop' => 'posts#create'
  get '/feed' => 'users#feed'
  put '/posts/:id/like' => 'posts#like' , as: 'like'
  post '/posts/:id/comment' => 'posts#comment' , as:'comment'
  get '/me' => 'users#index' , as: "profile"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'users#feed'
  resources :posts , only:[:show]

end
