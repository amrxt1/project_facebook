class UserMailer < ApplicationMailer
  default from: Figaro.env.mail
  def welcome(user)
      @user = user
      @url = 'https://project-facebook.fly.dev'
      mail( to: @user.email, subject: "Welcome to Project-Facebook" )
  end
end
