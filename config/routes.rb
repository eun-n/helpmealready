Rails.application.routes.draw do
  get 'comments/index'

  get 'comments/create'

  get 'comments/new'

  get 'comments/edit'

  get 'comments/show'

  get 'comments/update'

  get 'comments/destroy'

  get "login" => "sessions#new"
  post "login" => "sessions#create"
  delete "logout" => "sessions#destroy"

  get 'video' => 'video#index'

  get 'posts/index'

  get 'posts/create'

  get 'posts/new'

  get 'posts/edit'

  get 'posts/show'

  get 'posts/update'

  get 'posts/destroy'

  get 'tags/index'

  get 'tags/create'

  get 'tags/new'

  get 'tags/edit'

  get 'tags/show'

  get 'tags/update'

  get 'tags/destroy'

  get 'tags/index'

  get 'tags/create'

  get 'tags/new'

  get 'tags/edit'

  get 'tags/show'

  get 'tags/update'

  get 'tags/destroy'

  root 'posts#index'
  get 'about' => 'main#about'
  
  resources :posts do
    resources :comments
  end
  resources :comments
  resources :tags
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
