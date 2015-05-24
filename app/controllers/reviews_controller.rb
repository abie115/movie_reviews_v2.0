class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  before_filter :require_login, :only => [:new, :edit]

  # GET /reviews
  # GET /reviews.json
  def index
    @reviews = Review.all
  end

  # GET /reviews/1
  # GET /reviews/1.json
  def show
      @comments= @review.comments.paginate(page: params[:page], :per_page =>5)
      @movie = Tmdb::Movie.detail(@review.movie_id)
  end

  # GET /reviews/new
  def new
    @review = Review.new
    #@movie=Movie.find(params[:movie])
    @movie = Tmdb::Movie.detail(params[:movie])
  end

  # GET /reviews/1/edit
  def edit
     @movie = Tmdb::Movie.detail(@review.movie_id)
  end

  # POST /reviews
  # POST /reviews.json
  def create
    @review = Review.new(review_params)

   # respond_to do |format|
      if @review.save        
           flash[:success] = "You have created review successfully."
         redirect_to(movie_path(@review.movie_id))
      else
         flash.now[:danger] = 'Invalid data'
          render 'new'
      end
  end

  # PATCH/PUT /reviews/1
  # PATCH/PUT /reviews/1.json
  def update
      @movie = Tmdb::Movie.detail(@review.movie_id)
    respond_to do |format|
      if @review.update(review_params)
        format.html { redirect_to @review, notice: 'Review was successfully updated.' }
        format.json { render :show, status: :ok, location: @review }
      else
        format.html { render :edit }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reviews/1
  # DELETE /reviews/1.json
  def destroy
    @review.destroy
    #respond_to do |format|
      flash[:notice] ='Movie review was successfully destroyed.'
       redirect_to(movie_path(@review.movie_id))
      #format.json { head :no_content }
    end
  #end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def review_params
      params.require(:review).permit(:title, :description, :movie_id, :user_id)
    end
end
