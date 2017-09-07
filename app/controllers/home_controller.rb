class HomeController < ApplicationController
  def index
    if user_signed_in?
      redirect_to movies_path
    else
      @movies = Movie.all
    end
    
  end
  
  def new
    @movie = Movie.new
  end
  
end
