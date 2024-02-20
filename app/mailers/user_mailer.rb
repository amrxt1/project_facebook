class UserMailer < ApplicationMailer
  default from: Figaro.env.mail
  def welcome(user)
      @user = user
      @url = 'https://localhost:3000'
      mail( to: @user.email, subject: "Welcome to Project-Facebook" )
  end
end
