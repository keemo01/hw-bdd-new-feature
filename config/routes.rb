Rottenpotatoes::Application.routes.draw do
  resources :movies
  # Add new routes here
  get 'movies/:id/similar', to: 'movies#same_director', as: 'same_director_movies'

  root to: redirect('/movies')
end
