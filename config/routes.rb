Rails.application.routes.draw do
  get "login" => "users#login_form"

  get "signup" => "users#new"

  get "/" => "home#top"
end
