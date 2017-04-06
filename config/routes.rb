Rails.application.routes.draw do
  resources :problems do
    resources :ideas
  end

  resources :ideas, only: [] do
    resources :comments, only: [:create]
  end

  resources :comments do
    resources :comments, only: [:create]
  end

  get 'ping' => 'ping#ping'
  get 'secured/ping' => 'secured_ping#ping'
end
