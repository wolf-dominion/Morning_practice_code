Rails.application.routes.draw do
  
  resources :cats, only: [:index, :show, :update, :create, :delete]
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
