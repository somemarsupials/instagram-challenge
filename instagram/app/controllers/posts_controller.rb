class PostsController < ApplicationController
  before_action :authenticate_user!

  def show
    @posts = Post.all
  end

  def new
  end

  def create
    @user = User.find(params[:user_id])
    @post = @user.posts.create(post_params)
    @post.save
    redirect_to root_url
  end

  private

  def post_params
    params.require(:post).permit(:title, :image)
  end
end
