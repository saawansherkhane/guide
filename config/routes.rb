Rails.application.routes.draw do

  get 'articles/index'

  get 'articles/new'

  get 'articles/show'

  get 'articles/edit'

  get 'welcome/index'
  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "users#new", :as => "sign_up"
  root :to => "welcome#index"
  resources :articles
  resources :users
  resources :sessions

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
