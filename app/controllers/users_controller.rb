class UsersController < ApplicationController
  before_filter :authenticate_user!

  def open
    current_user.open!
    redirect_to root_path
  end

  def close
    current_user.close!
    redirect_to root_path
  end

  def show
    @user = User.friendly.find(params[:id])
  end
end