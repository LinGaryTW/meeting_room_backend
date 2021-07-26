Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/meets", to: "meets#get_details"
  post "/create_meeting", to: "meets#create_meeting"
  get '/meet/:id', to: 'meets#meet'
  post '/delete', to: 'meets#delete_user'
end
