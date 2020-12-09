Rails.application.routes.draw do
   devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  } 
  resources :mypage
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root to: 'mutter#index'
  devise_scope :user do
    get "sign_in", :to => "mypage#show"
    get "sign_out", :to => "users/sessions#destroy" 
  end
end