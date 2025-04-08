Rottenpotatoes::Application.routes.draw do
  resources :movies
  # Add new routes here
<<<<<<< HEAD
  get 'movies/:id/similar', to: 'movies#same_director', as: 'same_director_movies'
=======
>>>>>>> 6cbe8db3053db20fb7feed67ef7c2cb5cd040d38

  root to: redirect('/movies')
end
