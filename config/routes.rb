Rails.application.routes.draw do

  post "obras" => "obras#create_obras"
  
  resources :obras
  root 'obras#create_obras'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
