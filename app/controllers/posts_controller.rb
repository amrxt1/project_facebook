class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = current_user.posts.build
    puts "New Post by #{current_user.name}"
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      redirect_to root_path, alert: "Post saved"
    else
      render "new", alert: "Post was not saved"
    end
  end


  private

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
