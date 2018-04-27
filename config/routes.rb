
Rails.application.routes.draw do
  get "ping" => 'application#ping'

  post 'user_token' => 'user_token#create'

  resources :classifieds, only: [:show, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
