Rails.application.routes.draw do

  devise_for :users
  post "obras" => "obras#create_obras"
  
  resources :obras
  #root 'obras#create_obras'
  root to: 'pages#index'
  get '/secret', to: 'pages#secret', as: :secret

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
