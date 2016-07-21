Rails.application.routes.draw do
  root 'pages#new'
  post  '/' ,  to: 'pages#create'
  get '/subscribed', to: 'pages#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
