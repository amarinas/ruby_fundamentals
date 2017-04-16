class UsersController < ApplicationController


  def new
  end

  def create
    @newuser = User.new(form_params)
    if User.exists?(username: params[:username])
      @user = User.exists?(username: params[:username])
      session[:user] = @user.id
      redirect_to "/users/show"
    elsif @newuser.save
        session[:user] = @newuser.id
        redirect_to '/users/show'

  end
  end

  def show
    @currentuser = User.find_by(id: session[:user])
    @posts = Message.all

    # @allpost = User.find(params[:user_id]).messages

  end

private
def form_params
  params.require(:user).permit(:username)
end


end
