class UsersController < ApplicationController
  def following
    @user = User.find(params[:id])
    @following = @user.following
    render 'following'
  end

  def show
    @user = User.find(params[:id])
    puts @user.name
    puts @user.followers
    @posts = @user.posts
  end
end
