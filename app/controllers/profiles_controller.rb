class ProfilesController < ApplicationController
    before_action :authenticate_user!
    before_action :set_user, only: [:show, :edit, :update, :destroy, :upvote, :downvote]

    
    def index
        @user = current_user
    end
    
    def create
        
        
    end
    
    # PATCH/PUT /profile/1
    # PATCH/PUT /profile/1.json
    def update
        respond_to do |format|
         if @user.update(user_params)
           format.html { redirect_to profiles_path, notice: 'Movie was successfully updated.' }
           format.json { render :show, status: :ok, location: @user }
         else
           format.html { render :edit }
           format.json { render json: @user.errors, status: :unprocessable_entity }
         end
       end
        
    end
    
    def show
        @user = User.find(params[:id])
        
    end

    def new
        
        
    end
    
    def edit
      @user = User.find(params[:id])
    end
    
    def destroy
    end
    
    
    private
      
      def set_user
         @user = User.find(params[:id])
      end
      
    def user_params
      params.require(:user).permit(:name, :email, :tagline, :bio, :photo)
    end
    
end
