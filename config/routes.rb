Rails.application.routes.draw do
  get 'pages/home'
  root to: 'pages#home'

  resources :phone_calls, only: %i[index]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
