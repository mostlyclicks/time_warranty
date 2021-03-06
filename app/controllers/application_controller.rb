class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?
  # before_filter :authenticate_admin!


  def load_users
    @users = User.all
  end

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :password, :password_confirmation, :current_password, 
        :gender, :age_range, :phone, :newsletter_sign_up, :address_1, :address_2, :city, :state_province, :zip_postal_code, :country)}
    end
end
