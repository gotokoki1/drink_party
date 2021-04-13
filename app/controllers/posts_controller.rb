class PostsController < ApplicationController
  def index
    @post = Post.includes(:user)
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.find(post_id)
    @post = Post.new(post_params)
    binding.pry
    if @post.save
      render :index
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:text, :content, :party_time).merge(user_id: current_user.id)
  end

end