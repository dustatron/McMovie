class CommentsController < ApplicationController
    
    def create
        @movie = Movie.find(params[:movie_id])
        @comment = @movie.comments.create(params[:comment].permit(:user, :body))
       # @comment = params.require(:comments).permit(:commenter, :body)
        redirect_to movie_path(@movie)
    end
    
    # def create
    #     @movie = Movie.find(params[:id])
    #     @comments = @movie.comments.create(comment_params)
    #     redirect_to movie_path(@movie)
    # end
    
    # private
    #     def comment_params 
    #         params.require(:comment).permit(:user, :body)
    #     end
    
    
end
