Rails.application.routes.draw do
  root "home#index"
  get 'home/index'
  get "/auth/:provider/callback" => "sessions#create"
  get "/signout" => "sessions#destroy", :as => :signout
end
