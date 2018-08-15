Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :todos do
    resources :items
  end
  # get '*unmatched_route', to: 'errors#show', code: 404
  
  post 'auth/login', to: 'authentication#authenticate'
  post 'signup', to: 'users#create'
  get 'users', to: 'users#index'
end
