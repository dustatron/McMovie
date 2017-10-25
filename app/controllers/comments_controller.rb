class CommentsController < ApplicationController
    
    def create
        @movie = Movie.find(params[:movie_id])
        @comment = @movie.comments.create(params[:comment].permit(:user, :body))
       # @comment = params.require(:comments).permit(:commenter, :body)
        redirect_to movie_path(@movie)
    end
    
   def destroy
       @movie = Movie.find(params[:movie_id])
       @comment = @movie.comments.find(params[:id])
       @comment.destroy
       redirect_to movie_path(@movie)
   end
    
end
