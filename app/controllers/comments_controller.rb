class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :destroy]
  before_filter :require_login, :only => [:new]
  # GET /comments
  # GET /comments.json
  def index
   # @comments = Comment.all
     # @comments = Comment.paginate(page: params[:page])
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
  end

  # GET /comments/new
  def new
    @comment = Comment.new
    @review=Review.find(params[:review])
   # @movie=Movie.find(params[:movie])
  end

  # GET /comments/1/edit
  def edit
  end

  # POST /comments
  # POST /comments.json
  def create
    @comment = Comment.new(comment_params)
   
      if @comment.save
           flash[:success] = "You have created comment successfully."
      redirect_to :controller => 'movies', :action => 'index'
      else
         flash.now[:danger] = 'Invalid email or password'
      render 'new'
      end
    end
 


  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to comments_url, notice: 'Comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:content, :nick, :add_date, :review_id)
    end
end
