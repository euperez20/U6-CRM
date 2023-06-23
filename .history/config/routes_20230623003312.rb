Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  # resources :customers

  get '/customers/alphabetized', to: 'customers#alphabetized', as: 'alphabetized_customers'

  resources :customers do
    collection do
      get 'missing_email'
    end
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
