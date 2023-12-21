class ApplicationController < ActionController::Base
  before_action :configure_permited_parameters, if: :devise_controller?

  protected

  def configure_permited_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:phone, :email, :password, :password_confirmation])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:phone, :email, :password, :password_confirmation])
    devise_parameter_sanitizer.permit(:account_update, keys: [:phone, :email, :password, :password_confirmation])
  end
end
