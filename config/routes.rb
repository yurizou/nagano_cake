Rails.application.routes.draw do

  devise_for :customers, skip: [:passwords], controllers: {
   registrations: "public/registrations",
   sessions: 'public/sessions'
 }

 devise_for :admin, skip: [:registrations, :passwords], controllers: {
   sessions: "admin/sessions"
 }

  scope module: :public do
    get '' => 'homes#top'
    get 'about' => 'homes#about'
    resources :items, only: [:index, :show]
    resources :deliveries


    #patch機能（updateとquitアクション）はどうすれば、、、
    get 'customers/my_page' => 'customers#show'
    get 'customers/edit' => 'customers#edit'
    get 'customers/confirm' => 'customers#confirm'


    delete 'cart_items/all_destroy' => 'cart_items#all_destroy'
    resources :cart_items, only: [:index, :update, :destroy, :create]


    resources :orders, only: [:new, :index, :create, :show]
    post 'orders/confirm' => 'orders#confirm', as: 'confirm'
    get 'orders/complete' => 'orders#complete', as: 'complete'

    resources :genres
 end


  namespace :admin do
    root to: 'homes#top'
    resources :items
    resources :customers, only: [:index, :show, :edit, :update]
    resources :orders, only: [:show, :update]
    resources :genres, only: [:index, :edit, :create, :update]
    patch 'orders_details' => 'orders_details#update'
 end


end


