Rails.application.routes.draw do

  post "/handle_report", to: "reports#handle", defaults: { format: :json }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # namespace :api, defaults: { format: :json } do
  #   namespace :v1 do
  #     resources :changes, only: [ :create ]
  #   end
  # end
end
