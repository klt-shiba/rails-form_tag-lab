Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, only: [:index, :new, :create]

  get '/students/:id', to: 'students#show', as: 'student'
  get '/students/new', to: 'students#new'
  get '/students', to: 'students#index'
  post '/students/new', to: 'students#create'

end
