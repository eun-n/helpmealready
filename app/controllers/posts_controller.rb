class PostsController < ApplicationController
  def index
      @posts = Post.all
  end

  def create
    post = Post.create(post_params)
    redirect_to posts_path post
  end

  def new
      @post = Post.new
      @tags = Tag.all
  end

  def edit
    @post = Post.find params[:id]
    @tags = Tag.all
  end

  def show
    @post = Post.find params[:id]
  end

  def update
    p = Post.find params[:id]
    p.update post_params
    redirect_to posts_path
  end

  def destroy
    Post.find(params[:id]).destroy
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:id, :description, :title, :picture, tag_ids: [])
  end
end
