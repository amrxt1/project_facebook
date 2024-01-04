class LikesController < ApplicationController

  def create
    @like = current_user.likes.build(like_params)
    if @like.save
      redirect_to root_url, notice: "Post Liked"
    else
      head :unprocessable_entity
    end
  end

  def destroy
    @like = current_user.likes.find_by(post_id: params[:post_id])
    if @like.destroy
      redirect_to root_url, notice: "Post Unliked"
    else
      head :unprocessable_entity
    end
  end

  private
  def like_params
    params.permit(:post_id)
  end
end
