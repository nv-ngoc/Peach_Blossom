# frozen_string_literal: true

module Admin
  class PostsController < Admin::BaseController
    before_action :post, only: %i[destroy show update]

    def index
      @posts = Post.all.order(created_at: :desc).page(params[:page]).per(3)
    end

    def new
      @post = Post.new
      @products = Product.all
    end

    def show
      @products = Product.all
    end

    def create
      @post = Post.new post_params
      @post.save

      redirect_to admin_posts_path
    end

    def update
      @post.update post_params
      redirect_to admin_posts_path
    end

    def destroy
      @post.destroy
      redirect_to admin_posts_path
    end

    private

    def post_params
      params.require(:post).permit(:product_id, :title, :content)
    end

    def post
      @post = Post.find params[:id]
    end
  end
end
