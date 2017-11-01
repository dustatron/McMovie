class Profile < ActiveRecord::Base
    validates_length_of :tagline, maximum: 30
    def show
        @user = User.find( params[:id] )
        
    end
    
end
