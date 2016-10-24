class ApplicationController < ActionController::Base
  
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def ocnfigure_permitted_parameters
  	devise_parameter_sanitizer_permit(:sign_up, keys: [:name, :username, :age, :bio])
  	devise_parameter_sanitizer_permit(:account_update, keys: [:name, :username, :age, :bio])
  end
end
