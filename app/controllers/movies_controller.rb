class MoviesController < ApplicationController
  def show
    id = params[:id] # retrieve movie ID from URI route
    @movie = Movie.find(id) # look up movie by unique ID
    # will render app/views/movies/show.<extension> by default
  end

  def index
    @movies = Movie.all
  end

  def new
    # default: render 'new' template
  end

  def create
    @movie = Movie.create!(movie_params)
    flash[:notice] = "#{@movie.title} was successfully created."
    redirect_to movies_path
  end

  def edit
    @movie = Movie.find params[:id]
  end

  def update
    @movie = Movie.find params[:id]
    @movie.update!(movie_params)
    flash[:notice] = "#{@movie.title} was successfully updated."
    redirect_to movie_path(@movie)
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    flash[:notice] = "Movie '#{@movie.title}' deleted."
    redirect_to movies_path
  end

<<<<<<< HEAD
  def same_director
    @movie = Movie.find(params[:id])
    if @movie.director.blank?
      flash[:notice] = "'#{@movie.title}' has no director info"
      redirect_to movies_path
    else
      @movies = @movie.others_by_same_director
      render :same_director
    end
  end
  

  def movie_params
    params.require(:movie).permit(:title, :rating, :release_date, :director, :description)
  end

=======
  private

  # Note - for Part 1, you may need to modify this method.
  def movie_params
    params.require(:movie).permit(:title, :rating, :description, :release_date)
  end
>>>>>>> 6cbe8db3053db20fb7feed67ef7c2cb5cd040d38
end
