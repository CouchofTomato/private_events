class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path
    else
    end
  end

  def show
    @user = User.find(params[:id])
    @future_events = @user.upcoming_events
    @past_events = @user.past_events
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :email)
  end
end
