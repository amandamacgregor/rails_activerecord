Rails.application.routes.draw do
  resources :animals
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post "/sightings" => "sightings#create"
  put "/sightings/:id" => "sightings#update"
  get "sightings" => "sightings#index"
end
