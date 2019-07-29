# frozen_string_literal: true

module Admin
  class BaseController < ApplicationController
    before_action :authenticate_user!
    before_action :check_admin

    layout "admin"

    private

    def check_admin
      redirect_to root_path if current_user.role == "user"
    end
  end
end
