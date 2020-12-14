Rails.application.routes.draw do

  resources :people
  get 'admins/index'
  resources :pits
  resources :reports
  root 'welcome#index'
  
  resources :users
  resources :sessions

  namespace :admin do 
    # root 'users#index'
    resources :users do 
      collection do 
        get :search
      end
    end
  end

end
