Rails.application.routes.draw do
  
  authenticated :user, ->(user) { user.admin? } do
    get 'admin', to: 'admin#index'
    get 'admin/accounts'
    get 'admin/users'
    get 'admin/show_account/:id', to: "admin#show_account", as: "admin_account"
    get 'admin/show_user/:id', to: "admin#show_user", as: "admin_user"
  end
  
  root 'pages#home'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  resources :accounts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
