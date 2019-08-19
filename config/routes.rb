# frozen_string_literal: true

Rails.application.routes.draw do
  mount Ckeditor::Engine => "/ckeditor"
  devise_for :users, controllers: {
    sessions: "users/sessions",
    registrations: "users/registrations"
  }

  namespace :admin do
    resources :products
    resources :posts
    root "static_page#index"
  end

  root "static_page#edit"
end
