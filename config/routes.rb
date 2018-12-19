Rails.application.routes.draw do
  resources :passwords, controller: "clearance/passwords", only: [:create, :new]
  resource :session, controller: "clearance/sessions", only: [:create]

  resources :users, controller: "clearance/users", only: [:create] do
    resource :password,
      controller: "clearance/passwords",
      only: [:create, :edit, :update]
  end
  resources :user_type_seller, controller: 'user_type_seller'
  resources :user_type_buyer, controller: 'user_type_buyer'

  get "/user_type_seller/seller" => "user_type_seller#seller"
  get '/user_type_buyer/buyer' => 'user_type_buyer#buyer'
  get "/sign_in" => "clearance/sessions#new", as: "sign_in"
  delete "/sign_out" => "clearance/sessions#destroy", as: "sign_out"
  get "/sign_up" => "clearance/users#new", as: "sign_up"
  get "/disp" => 'user_type_buyer#disp'
  get '/userDisplay' => 'admin#userDisplay'
  get 'login/index'
  root 'login#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
