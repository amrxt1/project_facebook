class UsersController < ApplicationController
  def following
    @following = User.find(params[:id]).following
    render 'following'
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts
  end
end
