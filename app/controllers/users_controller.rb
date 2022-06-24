class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
  if @user.save
    flash[:notice]="Signup successful"
   redirect_to '/login'
  else
    Rails.logger.info @user.errors.full_messages
    flash[:notice]= @user.errors.full_messages
    redirect_to '/signup'
  end
  end

  def newy
    @user = User.new
  end

  def index
  end
  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password)
    end
end
