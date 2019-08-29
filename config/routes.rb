# frozen_string_literal: true

Rails.application.routes.draw do
  # RESTful routes
  get '/books' => 'books#index'
  get '/books/:id' => 'books#show'
  delete '/books/:id' => 'books#destroy'
  patch '/books/:id' => 'books#update'

  get '/patients' => 'patients#index'
  get '/patients/:id' => 'patients#show'
  delete '/patients/:id' => 'patients#destroy'

  get '/ingredients' => 'ingredients#index'
  get '/ingredients/:id' => 'ingredients#show'
  delete '/ingredients/:id' => 'ingredients#destroy'

  resources :examples, except: %i[new edit]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
end
