Rails.application.routes.draw do
  resources :ideas
  resources :problems
  # get 'secured_ping/ping', to: 'secured_ping#ping'
  #
  # get 'ping/ping', to: 'ping#ping'

  get 'ping' => 'ping#ping'
  get 'secured/ping' => 'secured_ping#ping'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
