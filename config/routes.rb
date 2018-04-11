Rails.application.routes.draw do
  get 'progress/index'
  resources :progress
  resources :exercises
  get 'welcome/index'
  
  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
