Rails.application.routes.draw do
  get 'restaurants/:id/details' => 'restaurants#details'
  post 'restaurants/:id/ankiting' => 'restaurants#ankiting'
  get 'restaurants/:id/ankiting' => 'restaurants#ankiting'
  post 'restaurants/handleClick' => 'restaurants/handleClick'
  post 'ratings/add_rating' => 'ratings/add_rating'

  resources :restaurants
  resources :reservations
  devise_for :users
  devise_for :admins

  get '/' => "home#index"
  root to: "home#index"
  
  post '/upload_image' => 'home#upload_image'
  post '/toggle' => 'bookmarks#toggle_bookmark'
  post '/toggle_beenhere' => 'been_heres#toggle_beenhere'
  post '/toggle_like' => 'likes#toggle_like'

  
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
