class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :edit, :update, :destroy]
     before_filter :require_login, :only => [:new, :edit]

  

  # GET /movies
  # GET /movies.json
  def index
      # @movies=Movie.all
      # @movies = Movie.paginate(page: params[:page], :per_page =>4).order('created_at DESC').search(params[:search])
      if params[:search] == nil
        @movies = Tmdb::Movie.now_playing
      else 
        @search = Tmdb::Search.new
        @search.resource("movie")
        @search.query(params[:search])
        @movies = @search.fetch
      end
      @configuration = Tmdb::Configuration.new
      respond_to do |format|
          format.html
          format.js
      end
  # @movies = Movie.all
  end

  # GET /movies/1
  # GET /movies/1.json
  def show
    @configuration = Tmdb::Configuration.new
    #@comments = @movie.comments.paginate(page: params[:page], :per_page =>5)
    #@reviews= @movie.reviews.paginate(page: params[:page], :per_page =>5)
    @reviews = Review.where("movie_id=?", @movie['id'])
  end
  
  # GET /movies/all
  def all
    if params['genre']
      @genre = Tmdb::Genre.detail(params['genre'])
      @movies = @genre.results
    else
      @movies = Tmdb::Movie.popular
    end
    @configuration = Tmdb::Configuration.new
    @genres = Tmdb::Genre.list['genres']
  end

  # GET /movies/new
  def new
    @movie = Movie.new
  end

  # GET /movies/1/edit
  def edit
  end

  # POST /movies
  # POST /movies.json
  def create
    @movie = Movie.new(movie_params)

    respond_to do |format|
      if @movie.save
        format.html { redirect_to @movie, notice: 'Movie review was successfully created.' }
        format.json { render :show, status: :created, location: @movie }
      else
        format.html { render :new }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movies/1
  # PATCH/PUT /movies/1.json
  def update
    respond_to do |format|
      if @movie.update(movie_params)
        format.html { redirect_to @movie, notice: 'Movie review was successfully updated.' }
        format.json { render :show, status: :ok, location: @movie }
      else
        format.html { render :edit }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movies/1
  # DELETE /movies/1.json
  def destroy
    @movie.destroy
    respond_to do |format|
      format.html { redirect_to movies_url, notice: 'Movie review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie
      #@movie = Movie.find(params[:id])
      @movie = Tmdb::Movie.detail(params[:id])
      @trailers = Tmdb::Movie.trailers(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movie_params
      params.require(:movie).permit(:title, :category, :release_date, :review, :name)
    end
   
end
