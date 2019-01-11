Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'user/:name', to: 'user#show'
  post 'user/:name', to: 'user#create'
  put 'user/:name', to: 'user#save'
  delete 'user/:id', to: 'user#delete'

end