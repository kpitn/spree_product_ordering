# Put your extension routes here.
Rails.application.routes.draw do |map|
  namespace :admin do
    resources :products do
      collection do
        get :reorder
        post :order_products
      end
    end
  end
end