Rails.application.routes.draw do
 
root "cocktails#index"

 resources :cocktail, only: [:show, :index, :new, :create] do
 	resources :dose, only: [:show, :new, :create]
 end

 resources :dose, only: [:destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
