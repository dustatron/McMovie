class Comment < ActiveRecord::Base
  belongs_to :movie
  
  # def initialize comment
  #     @comment = comment
  # end
  
  # def create
  #     Comment.new([
  #           user: @comment['user'],
  #           body: @comment['body'],
  #         ])
  # end
  
end
