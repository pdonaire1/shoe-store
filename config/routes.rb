Rails.application.routes.draw do

  resources :brands
  root 'shoes#index' # shortcut for the above

  resources :shoes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    resources :shoes
    resources :brands, only: [:index]
    """
      Brands:
        * Get all: 
          GET http://localhost:3000/api/brands
      Shoes:
        * Get all:
          GET http://localhost:3000/api/shoes
        * Create:
          POST http://localhost:3000/api/shoes
          params:
            shoe[model]
            shoe[brand_id]
            shoe[isbn]
            shoe[release_year]
            shoe[sku]
            shoe[photo] (file format)
        * Show:
          GET http://localhost:3000/api/shoes/:id
        * Update:
          PUT http://localhost:3000/api/shoes/:id
          params:
            shoe[model]
            shoe[brand_id]
            shoe[isbn]
            shoe[release_year]
            shoe[sku]
            shoe[photo] (file format)
        * Delete:
          DETELE http://localhost:3000/api/shoes/:id
    """

  end
end
