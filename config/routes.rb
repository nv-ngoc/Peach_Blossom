# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :admin do
    root "static_page#index"
  end

end
