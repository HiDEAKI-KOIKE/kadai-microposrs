Rails.application.routes.draw do
    root to: 'toppages#index'
    
    
    get 'signup', to: 'users#new'
    resources :users, only: [:index, :show, :create]
end
 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html