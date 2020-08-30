Rails.application.routes.draw do
  get '/campers', to: "campers#index", as: "campers"
  get '/campers/new', to: "campers#new", as: "new_camper"
  post '/campers/', to: "campers#create"
  get '/campers/:id', to: "campers#show", as: "camper"

  get '/activities', to: "activities#index", as: "activities"

  get '/signups', to: "signups#index", as: "signups"
  get '/signups/new', to: "signups#new", as: "new_signup"
  post '/signups/', to: "signups#create"
  get '/signups/:id', to: "signups#show", as: "signup"
  delete '/signups/:id', to: "signups#destroy"
  patch 'signups/:id', to: "signups#update"
  get	'/signups/:id/edit', to: "signups#edit", as: "edit_signup"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
