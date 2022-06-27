Rails.application.routes.draw do
  # get 'index', :to => "todos#index"
  post 'todos', :to =>'todos#create'

  ############
  # delete 'delete' => 'todos#destroy'

  get '/delete/:id', :to => "todos#delete"
  root "todos#index"
  # get 'timetable' => 'timetables#new'
  #############
  # match 'index' ,:to=> 'todos#index', :via => :get
  # match 'connect_create',:to => 'todos#create', :via => :post 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
