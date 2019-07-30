# frozen_string_literal: true

module Admin
  class ProductsController < Admin::BaseController
    def index; end

    def new
      @product = Product.new
      @product.images.build
    end

    def create
      # @product = Product.new product_params

      # if @product.save
      #   params[:images]['image_link'].each do |a|
      #     @image = @product.images.create!(name: a)
      #   end
      # end    
      # redirect_to admin_root_path
    end

    private

    def product_params
      params.require(:product).permit :name, :price, :description,
                                      images_attributes: %i[id product_id image_link]
    end
  end
end
