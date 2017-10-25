class Comment < ActiveRecord::Base
  belongs_to :movie
  
  # def initialize submitedComment
  #     @comment = submitedComment
      
  # end
  
  # def create
  #     Comment.new([
  #           user: @comment['user'],
  #           body: @comment['body'],
  #           movie: @movie['movie'],
  #         ])
  # end
  
end
