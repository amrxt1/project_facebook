class UsersController < ApplicationController
  def following
    @following = User.find(params[:id]).following
    render 'following'
  end
end
