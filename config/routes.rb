Rails.application.routes.draw do

  root "web#top"
  get  "login"  => "web#login"
  get  "logout" => "web#logout"
  get  "login_check" => "web#login_check"
  resources :users
  get  "game"   => "game#game"
  get  "result" => "game#result"

  mount ActionCable.server => '/cable'
end
