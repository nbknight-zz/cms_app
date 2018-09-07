Rails.application.routes.draw do


  root 'demo#index'

  resources :subjects do

    member do
      get :delete
    end
  end

  resources :sections do

    member do
      get :delete
    end
  end

  resources :pages do

    member do
      get :delete
    end
  end


  get 'demo/index'
  get 'demo/hello'
  get 'new_controller/index'
  get 'new_controller/new'
  get 'new_controller/show'
  get 'demo/lynda'
  get 'demo/escape_output'
  
 
  


  # default route
  # may go away in later versions of Rails 
  # get ':controller(/:action(/:id))'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
