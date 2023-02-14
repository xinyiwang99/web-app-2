class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new
    @post["author"] = params["post"]["author"]
    @post["author"] = params["post"]["body"]
    @post["author"] = params["post"]["image"]
    @post.save
    redirect_to "/posts"
  end

end
