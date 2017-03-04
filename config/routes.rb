Rails.application.routes.draw do
  devise_for :users, controllers:{
    sessions:'users/sessions'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :admin do
    resources :products
    resources :orders do
        member do
          post :cancel
          post :ship
          post :shipped
          post :return
        end
      end
  end

  namespace :account do
    resources :orders
  end


  resources :products do
    get :funding_product, :on => :member
    member do
      post :add_to_cart
    end
    collection do
       get :search
    end
  end

  resources :carts do
    collection do
      delete :clean
      post :checkout
    end
  end

  resources :cart_items
  resources :orders  do
    member do
      post :pay_with_alipay
      post :pay_with_wechat
      post :apply_to_cancel
    end
  end

  # root 'welcome#index'
  root 'products#index'
  get 'funding' => 'products#funding'
  # get 'funding_product' => 'products#funding_product'
end
