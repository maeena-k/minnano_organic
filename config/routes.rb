Rails.application.routes.draw do
  root to: 'home#index'

  # This line mounts Solidus's routes at the root of your application.
  # This means, any requests to URLs such as /products, will go to Spree::ProductsController.
  # If you would like to change where this engine is mounted, simply change the :at option to something different.
  #
  # We ask that you don't use the :as option here, as Solidus relies on it being the default of "spree"
  mount Spree::Core::Engine, at: '/'
  resources :categories, only: %i[show index]
  resources :customers,  only: %i[show edit update destroy]
  get 'location', to: 'locations#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
