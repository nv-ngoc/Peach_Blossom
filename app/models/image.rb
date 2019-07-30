# frozen_string_literal: true

class Image < ApplicationRecord
  mount_uploader :name, MediaUploader
  belongs_to :product
end
