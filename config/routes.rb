Rails.application.routes.draw do
  post 'todos', :to =>'todos#create'
  get '/delete/:id', :to => "todos#delete"
  root "todos#index"
  # match 'index' ,:to=> 'todos#index', :via => :get
  # match 'connect_create',:to => 'todos#create', :via => :post 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
