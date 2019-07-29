# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_permitted_parameters
  layout "login"

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |user|
      user.permit(:username, :role, :email, :password, :password_confirmation)
    end
  end
end
