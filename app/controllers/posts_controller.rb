class PostsController < ApplicationController

  # GET /posts
  def index
    @venue = "Students hate Rails"
    @posts = Post.order(created_at: :desc).limit(10)
  end

  # GET /posts/1
  def show
    @post = Post.find(params[:id])
  end

end
