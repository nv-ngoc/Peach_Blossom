# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  layout "login"

  def after_sign_in_path_for(_resource)
    if current_user.role == "admin"
      admin_root_path
    else
      root_path
    end
  end

  def after_sign_out_path_for(resource)
    stored_location_for(resource) || new_user_session_path
  end
end
