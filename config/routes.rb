Rails.application.routes.draw do
  get "login" => "users#login_form"
  post "login" => "users#login"
  post "logout" => "users#logout"

  post "users/create" => "users#create"
  get "signup" => "users#new"
  get "users/:id" => "users#show"

  get "posts/index" => "posts#index"
  get "posts/new" => "posts#new"
  post "posts/create" => "posts#create"
  post "posts/:id" => "posts#show"
  post "posts/:id/destroy" => "posts#destroy"

  get "/" => "home#top"
end
