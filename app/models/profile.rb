class Profile < ActiveRecord::Base

    def show
        @user = User.find( params[:id] )
        
    end
    
end
