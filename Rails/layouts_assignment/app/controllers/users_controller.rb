class UsersController < ApplicationController
  def index
    @users = User.all
    render layout: "two_column"
  end


  def create
      User.create(new_params)
      redirect_to '/'
  end


  def edit
  end

  def new
  end

private
  def new_params
    params.require(:user).permit(:first_name, :last_name, :favorite_langguage)
  end

end
