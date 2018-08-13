Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "todos#index"
  resources :todos, only: [:new, :create]

  resource :session, only: [:new, :create]
end
