Rails.application.routes.draw do
  # get 'sessions/new'
  # get 'users/new'
  # get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  resources :welcome
  resources :users
  resources :sessions

end
