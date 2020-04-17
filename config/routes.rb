Rails.application.routes.draw do
  get 'chart/index'
  resources :result_fights
  devise_for :users
  get 'pages/info'
  resources :characters
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: redirect('/characters')
  get "pages/info"
end
