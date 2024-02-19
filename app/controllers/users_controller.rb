class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    puts @user.name
    puts @user.followers
    @posts = @user.posts
    @show_followers = true
  end

  def index
    @users = User.all.order(created_at: :desc)
  end

  #Custom Routes
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

  def my_profile
    @user = current_user
    @posts = @user.posts
    @show_followers = false
    render 'show'
  end
end
