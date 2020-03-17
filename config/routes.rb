Rails.application.routes.draw do
  get "login" => "users#login_form"

  post "users/create" => "users#create"
  get "signup" => "users#new"
  get "users/:id" => "users#show"

  get "/" => "home#top"
end
