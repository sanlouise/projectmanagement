Rails.application.routes.draw do
  
  resources :user_projects
  match '/plan/edit' => 'tenants#edit', via: :get, as: :edit_plan
  
  resources :attachments
  resources :tenants do
    resources :projects do
      get 'users', on: :member
      put 'add_user', on: :member
    end
  end
  resources :members
  
  get 'home/index'

  root :to => "home#index"

    
  # *MUST* come *BEFORE* devise's definitions (below)
  as :user do   
    match '/user/confirmation' => 'confirmations#update', :via => :put, :as => :update_user_confirmation
    match '/plan/update' => 'tenants#update', via: [:put, :patch], as: :update_plan
  end

  devise_for :users, :controllers => { 
    :registrations => "registrations",
    :confirmations => "confirmations",
    :sessions => "milia/sessions", 
    :passwords => "milia/passwords", 
  }


end