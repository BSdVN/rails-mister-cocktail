Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:index, :new, :create, :show]
  resources :doses, only: [:new, :create, :destroy]

  # get  "cocktails",     to: "cocktails#index"

  # get  "cocktails/new", to: "cocktails#new"
  # post "cocktails",     to: "cocktails#create"

  # get  "cocktails/:id", to: "cocktails#show"

  # get    "doses/new", to: "doses#new"
  # post   "doses",     to: "doses#create"

  # delete "doses/:id", to: "doses#destroy"
end
