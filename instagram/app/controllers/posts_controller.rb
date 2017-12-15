class PostsController < ApplicationController
  before_action :authenticate_user!

  def show
    @posts = Post.all
  end

  def new
  end

  def create
    Post.from_params(params[:user_id], post_params)
    redirect_to root_url
  end

  private

  def post_params
    params.require(:post).permit(:title, :image)
  end
end
