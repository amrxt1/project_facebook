class UsersController < ApplicationController
  def following
    @user = User.find(params[:id])
    @following = @user.following
    render 'following'
  end

  def followers
    @user = User.find(params[:id])
    @followers = @user.followers
    render 'followers'
  end

  def show
    @user = User.find(params[:id])
    puts @user.name
    puts @user.followers
    @posts = @user.posts
  end
end
