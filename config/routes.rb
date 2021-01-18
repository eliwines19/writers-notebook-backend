Rails.application.routes.draw do
  resources :characters
  resources :comments
  resources :story_ideas
  resources :users

  get '/sessions/logged_in', to: 'sessions#logged_in'
  get '/sessions/logout', to: 'sessions#logout'
  resources :sessions, only: [:create]
end
