Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :changes, only: :new
  resources :locks, only: [:create, :update] do
    resources :changes, only: :create
  end
end
