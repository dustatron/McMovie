class ProfilesController < ApplicationController
    before_action :authenticate_user!
    
    def index
        @user = current_user
    end
    
    def create
        
        
    end
    
    def update
        
    end
    
    def show
        
    end

    def new
        
        
    end
    
    def edit
     @user = User.find_by(id: current_user.id)
        
    end
    
    def destroy
    end
    
    
    private
    
    def set_user
       @user = User.find_by(id: params[:id])
    end

end
