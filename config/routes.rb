Rails.application.routes.draw do

  root "web#top"
  get  "login"  => "web#login"
  get  "logout" => "web#logout"
  get  "login_check" => "web#login_check"
  resources :users
end
