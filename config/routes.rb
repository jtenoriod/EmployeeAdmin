Rails.application.routes.draw do
  resources :obras
  post "obras" => "obras#create"  
  root 'obras#create_obras'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
