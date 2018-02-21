Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  root 'welcome#index'
  resources :whatnews
  resources :subjects
  resources :photos
  resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
