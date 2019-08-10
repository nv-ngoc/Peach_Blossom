# frozen_string_literal: true

class Product < ApplicationRecord
  has_many :posts
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images

  validates :name, presence: true
  validates :price, presence: true
  validates :description, presence: true
end
