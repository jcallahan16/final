FinalProject::Application.routes.draw do
  get "/" => 'homepage#index'

  get "/athlete/:id" =>'athlete#show'
  get "/brand/:id" =>'brand#show'


  # --- Create
  get "/sport/new" => 'sport#new'
  post "/sport" => 'sport#create'

  # --- Read
  get "/sport" => 'sport#index'
  get "/sport/:id" => 'sport#show'

  # -- Update
  get "/sport/:id/edit" => 'sport#edit'
  patch "/sport/:id" => 'sport#update'

  # --- Delete
  delete "/sport/:id" => 'sport#destroy'


    # Resource: Athletes

  # --- Create
  get "/athlete/new" => 'athlete#new'
  post "/athlete" => 'athlete#create'

  # --- Read
  get "/athlete" => 'athlete#index'
  get "/athlete/:id" => 'athlete#show'

  # -- Update
  get "/athlete/:id/edit" => 'athlete#edit'
  patch "/athlete/:id" => 'athlete#update'

  # --- Delete
  delete "/athlete/:id" => 'athlete#destroy'



  # Resource: Users

  # --- Create
  get "/brand/new" => 'brand#new'
  post "/brand" => 'brand#create'

  # --- Read
  get "/brand" => 'brand#index'
  get "/brand/:id" => 'brand#show'

  # -- Update
  get "/brand/:id/edit" => 'brand#edit'
  patch "/brand/:id" => 'brand#update'

  # --- Delete
  delete "/brand/:id" => 'brand#destroy'



  # Resource: Directors




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
