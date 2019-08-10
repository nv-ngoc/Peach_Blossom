# frozen_string_literal: true

module Admin
  class ProductsController < Admin::BaseController
    before_action :product, only: %i[show update destroy]

    def index
      @products = Product.all.order(created_at: :desc).page(params[:page]).per(5)
    end

    def show; end

    def update
      @product.update product_params
      redirect_to admin_products_path
    end

    def new
      @product = Product.new
      @product.images.build
    end

    def create
      @product = Product.new product_params

      if params[:images].present?
        @product.save
        params[:images]["image_link"].each do |a|
          @image = @product.images.create!(name: a)
        end
      end
      redirect_to admin_products_path
    end

    def destroy
      @product.destroy
      redirect_to admin_products_path
    end

    private

    def product_params
      params.require(:product).permit :name, :price, :description,
                                      images_attributes: %i[id product_id image_link]
    end

    def product
      @product = Product.find params[:id]
    end
  end
end
