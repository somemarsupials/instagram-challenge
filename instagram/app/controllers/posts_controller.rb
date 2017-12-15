class PostsController < ApplicationController
  def show
    @posts = Post.all
  end

  def new
  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to root_url
  end

  private

  def post_params
    params.require(:post).permit(:title, :image)
  end
end
