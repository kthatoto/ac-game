Rails.application.routes.draw do

  root "web#top"
  get  "login"  => "web#login"
  get  "logout" => "web#logout"
  resources :users
end
