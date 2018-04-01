Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  root 'welcome#index'
  get "/pages/*page" => "pages#show"


  
  resources :whatnews, only: [:index, :show]
  resources :subjects, only: [:index, :show]
  resources :photos, only: [:index, :show]
  resources :events, only: [:index,:show]
  resources :users, only: [:show,:edit,:update]

  namespace :admin do
  	resources :whatnews, except: [:index, :show]
    resources :subjects, except: [:index, :show]
    resources :events, except: [:index,:show]
    resources :photos, except: [:index, :show]
    resources :users, except: [:show,:edit, :update]

  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
