ActionController::Routing::Routes.draw do |map|
  # The priority is based upon order of creation: first created -> highest priority.
  map.root :controller => "home"
  map.biz '/mykat7310', :controller => 'users', :action => 'biz'
  map.logout '/logout', :controller => 'users', :action => 'destroy'
  map.forgot '/forgot', :controller => 'users', :action => 'forgot'

  map.profile '/profile', :controller => 'users', :action => 'profile'

  map.product_catalog '/products', :controller => 'products', :action => 'product_catalog'
  map.payments '/payment/:id', :controller => 'products', :action => 'payments'

  map.analytics '/analytics', :controller => 'home', :action => 'analytics'
  map.notifications '/notifications', :controller => 'home', :action => 'notifications'
  map.say_your_price '/sayprice', :controller => 'home', :action => 'say_your_price'
  map.winners '/winners', :controller => 'home', :action => 'winners'
  map.search '/search', :controller => 'home', :action => 'search'

  map.faqs '/faqs', :controller => 'home', :action => 'faqs'

  map.download_pdf '/download_pdf/:id', :controller => 'products', :action => 'download_pdf'

  map.capsule '/:id', :controller => 'products', :action => 'capsule'
  # Sample of regular route:
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller
  
  # Sample resource route with more complex sub-resources
  #   map.resources :products do |products|
  #     products.resources :comments
  #     products.resources :sales, :collection => { :recent => :get }
  #   end

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
   

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing or commenting them out if you're using named routes and resources.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
