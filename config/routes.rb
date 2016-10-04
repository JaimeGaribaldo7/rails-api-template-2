Rails.application.routes.draw do
  resources :draftings, except: [:new, :edit]
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  get '/poke-pc/:id' => 'pokemons#index'
  get '/teams/:id' => 'teams#index'
  patch '/teams/:id' => 'teams#update'
  post '/teams/:id' => 'teams#create'
  resources :users, only: [:index, :show]
  resources :pokemons, except: [:new, :edit]
  resources :teams, except: [:new, :edit]
end
