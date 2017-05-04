Rails.application.routes.draw do

  root "web#top"
  get  "login" => "web#login"
  resources :users
end
