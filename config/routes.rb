Rails.application.routes.draw do

  resources :brands
  root 'shoes#index' # shortcut for the above

  resources :shoes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
