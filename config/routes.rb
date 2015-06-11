Rails.application.routes.draw do
  resources :users do
    resources :islands, controller: 'user_island' do
      collection do 
        get 'visited'
        get 'not_visited'
      end
    end
  end

  resources :islands do
    resources :creatures
  end  

  
  # You can have the root of your site routed with "root"
  root 'users#new'
end
