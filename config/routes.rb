Rails.application.routes.draw do
  root :to => 'static_pages#home'  
  get 'help' => 'static_pages#help'
  get 'about' => 'static_pages#about'  
  get 'contact' => 'static_pages#contact'
  get 'signup' => 'users#new'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create' 
  post '/signup', to: 'users#create'
  delete 'logout' => 'sessions#destroy'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
