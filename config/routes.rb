Rails.application.routes.draw do
  devise_for :users
  post '/pop' => 'posts#create'
  get '/feed' => 'users#feed'
  put '/posts/:id/like' => 'posts#like' , as: 'like'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'users#index'
  resources :posts , only:[:show]

end
