Rails.application.routes.draw do
  
  devise_for :users


  devise_for :admins


  resources :users do
    resources :bikes
  end

  authenticated :admin do
    root to: "welcome#dashboard", as: "authenticated_root"
  end

  root 'welcome#index'


end
