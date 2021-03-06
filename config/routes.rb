SampleApp::Application.routes.draw do
  # WGG 04/07/2014 endows our sample application with all the 
  # actions needed for a RESTful Users resource
  resources :users

  # Adding a resource to get the standard RESTful actions for sessions. 
  resources :sessions, only: [:new, :create, :destroy]

  # root gives the url helpers:
  #   root_path -> '/'
  #   root_url  -> 'http://localhost:3000/'
  root  'static_pages#home'
  match '/signup',  to: 'users#new',            via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'

  # WGG 04/05/2014 -- This arranges both for a valid page at /help 
  # (responding to GET requests) and a named route called help_path 
  # that returns the path to that page.
  match '/help',    to: 'static_pages#help',    via: 'get'

  # WGG 04/06/2014 --matches a GET request for ’/about’ 
  # and routes it to the about action in the StaticPages controller
  # as with above, creates a named route called about_path
  # The above also creates the two named routes below:
  #   about_path -> '/about'
  #   about_url  -> 'http://localhost:3000/about'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'




  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
