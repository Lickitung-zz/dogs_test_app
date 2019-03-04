Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  namespace :api do
    get "/dogs" => "dogs#index"
    post "/dogs" => "dogs#create"
    get "/dogs/:id" => "dogs#show"
    put "dogs/:id" => "dogs#update"
    delete "/dogs/:id" => "dogs#destroy"
  end
end
