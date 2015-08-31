Rails.application.routes.draw do
  
  devise_for :users

  devise_for :admins

  resources :users do
    resources :bikes
  end


  root 'welcome#index'


end
