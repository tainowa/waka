Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  Rails.application.routes.draw do
  
  devise_for :users
  resources :users, only: [:show]
    patch 'toukous/:id' => 'toukous#update'
      delete 'toukous/:id' => 'toukous#destroy'


    get 'tweets/new' => 'tweets#new'
      get 'tweets/about' => 'tweets#about'
        get 'tweets/top' => 'tweets#top'
      get 'tweets/ichiran' => 'tweets#ichiran'
      get 'tweets/kyounoissyu' => 'tweets#kyounoissyu'
    resources :tweets do
      collection do
        get 'search'
      end
    end

  end 
 root 'tweets#about'

 
 resources :toukous 
 
end


 

  
