Rails.application.routes.draw do
 
  root to: 'homes#top'
  get 'about' => 'homes#about'
  
 devise_for :customers, skip: [:passwords], controllers: {
   registrations: "public/registrations",
   sessions: 'public/sessions'
 }
 
 devise_for :admin, skip: [:registrations, :passwords], controllers: {
   sessions: "admin/sessions"
 }
 
 namespace :admin do
    resources :items
 end
 
 namespace :public do
     resources :items
 end
 
end

