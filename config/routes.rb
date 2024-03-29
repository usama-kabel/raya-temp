Rails.application.routes.draw do
  get 'hangouts/list'

  get 'hangouts/show'

  get 'feedbacks/new'

  post 'feedbacks/create'

  get 'survays/new'
  
  post 'survays/create'

  get 'vote/vote'

  get 'sectors/new'

  get 'sectors/create'

  get 'users/show'

  get 'users/edit'

  get 'users/list'

  get 'users/follow'

  get 'users/unfollow'

  get 'decisionmakers/new'

  get 'decisionmakers/create'

  get 'decisionmakers/list'

  get 'decisionmaker/new'

  get 'decisionmaker/create'

  get 'decisionmaker/list'

  get 'supporters/create'

  get 'supporters/list'

  get 'supporter/create'

  get 'supporter/list'

  get 'supports/support'

  resources :polls

  get 'update/new'

  get 'update/create'
  get 'results/index'
  get 'results/create'
  get 'results/show'
  get 'comments/create'
  get 'index/index'
  get 'initiatives/list'
  get 'initiatives/search'
  get 'initiatives/search_engine'
  get 'initiatives/poll_submit'

  
  resources :initiatives
  resources :sectors
  devise_for :users
  devise_scope :user do
   get "signup", to: "devise/registrations#new"
   get "login", to: "devise/sessions#new"
   get "logout", to: "devise/sessions#destroy" 
  end
  resources :initiatives do
    resources :comments
  end



  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'index#index'

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
