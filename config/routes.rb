Rails.application.routes.draw do

  root 'demo#index'

  get 'demo/hello'
  get 'new_controller/index'
  get 'new_controller/new'
  get 'new_controller/show'
  
 
  get 'demo/index'


  # default route
  # may go away in later versions of Rails 
  # get ':controller(/:action(/:id))'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
