Rails.application.routes.draw do

  root to: 'homes#top'
  get 'about' => 'homes#about'

  scope module: :public do
     get 'items' => 'public/items#index'
     get 'items params[:id]' => 'items#show'
 end

  namespace :admin do
    resources :items
 end
 
 scope module: :public do
     resources :customers
end

 namespace :admin do
     resources :customers
end

  scope module: :public do
    resources :deliveries
 end
     

 namespace :admin do
    resources :deliveries
end
  

 devise_for :customers, skip: [:passwords], controllers: {
   registrations: "public/registrations",
   sessions: 'public/sessions'
 }

 devise_for :admin, skip: [:registrations, :passwords], controllers: {
   sessions: "admin/sessions"
 }



end

