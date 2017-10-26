class RegistrationsController < Devise::RegistrationsController
  before_filter :configure_permitted_parameters, :only => [:create]

  rescue_from ActiveRecord::RecordNotUnique, :with => :my_rescue_method

  protected
    def my_rescue_method
      flash[:alert] = "User name is use"
      redirect_to new_user_registration_path

    end

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password, :password_confirmation) }
    end
end
