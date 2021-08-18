Rails.application.routes.draw do

  root 'welcome#index'

  devise_for :users

  get 'welcome/index'
  authenticated :user do
    root "documents#index", as: "authenticated_root"
  end

  resources :documents
  
end
