RailsApp::Application.routes.draw do
  get 'home' => 'home#index'
  get 'home/rates' => 'home#rates'
  
  get 'home/search' => 'home#search'
  get 'home/SearchMass' => 'home#SearchMass'
  
  get 'home/OurOffering' => 'home#OurOffering'
  
  get 'home/evaluation' => 'home#evaluation'
  
  get 'home/buyer' => 'home#buyer'
  get 'home/ThisMonth' => 'home#ThisMonth'
  get 'home/BuyerSteps' => 'home#BuyerSteps'
  get 'home/DecideHowMuch' => 'home#DecideHowMuch'
  get 'home/CreateWishList' => 'home#CreateWishList'
  get 'home/Location' => 'home#Location'
  get 'home/Option' => 'home#Option'
  get 'home/RealtorHelp' => 'home#RealtorHelp'
  get 'home/EightQuestions' => 'home#EightQuestions'
  get 'home/Mortgage' => 'home#Mortgage'
  get 'home/BuyerFormGetAction' => 'home#BuyerFormGetAction'
  
  get 'home/seller' => 'home#seller'
  get 'home/EightStepsSell' => 'home#EightStepsSell'
  get 'home/SellerQuestions' => 'home#SellerQuestions'
  get 'home/SellerHowPrice' => 'home#SellerHowPrice'
  get 'home/SellerGoodEtiquette' => 'home#SellerGoodEtiquette'
  get 'home/SellerUnderstand' => 'home#SellerUnderstand'
  get 'home/SellerIncreaseAppeal' => 'home#SellerIncreaseAppeal'
  get 'home/SellerFormGetAction' => 'home#SellerFormGetAction'
  
  root 'home#index'
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
