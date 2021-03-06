Rails.application.routes.draw do

	devise_for :users

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'welcome#index'

  resources :students do
    collection { post :import }
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
