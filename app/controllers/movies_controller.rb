class MoviesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_movie, only: [:show, :edit, :update, :destroy, :upvote, :downvote]

  # GET /movies
  # GET /movies.json
  def index
    @movies = Movie.all.order(:cached_votes_score => :desc)
  end

  # GET /movies/1
  # GET /movies/1.json
  def show
    @movie = Movie.find(params[:id])
    if @movie.user_id
     @poster = User.find(@movie.user_id)

    end
    
  end

  # GET /movies/new
  def new
    searches = Search.for(params[:q])
    @results = Results.new(searches)
    @user = User.find(current_user)
  end


  # GET /movies/1/edit
  def edit
  end

  # POST /moviesbun
  # POST /movies.json

  def create
    @user = current_user
    details = Details.for(params[:movie]['id'])
    grabThe = Grabs.new(details, @user)
    @movie = grabThe.movie


    respond_to do |format|
      if @movie.save
        format.html { redirect_to @movie, notice: 'Movie was successfully created.' }
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
        format.html { redirect_to @movie, notice: 'Movie was successfully updated.' }
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
      format.html { redirect_to movies_url, notice: 'Movie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  

  def upvote
    @movie.upvote_from current_user
    redirect_to movies_path
  end

  def downvote
    @movie.downvote_from current_user
    redirect_to movies_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie
      @movie = Movie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movie_params
      params.require(:movie).permit(:title, :image, :body, :trailer, :user_id, :user_name)
    end
end
