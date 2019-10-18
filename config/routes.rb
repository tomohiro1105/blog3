Rails.application.routes.draw do
  devise_for :users
  root "blogs#index"
  get "/new"            => "blogs#new"
  post "/create"        => "blogs#create"
  get "/show/:id"       => "blogs#show"
  delete "/destroy/:id"  => "blogs#destroy"
  get  "/edit/:id"      =>  "blogs#edit"
  patch "update/:id"     =>  "blogs#update"
  post "/login"         =>   "blogs#login"

end
