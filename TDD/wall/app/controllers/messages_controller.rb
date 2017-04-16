class MessagesController < ApplicationController

  def create
    @user = User.find_by(id: session[:user])
    @newpost = @user.messages.new(forms_params)
    if @newpost.save
      redirect_to "/users/show/"
    else
      flash[:errors] = @newpost.errors
      redirect_to "/users/show/"
    end
  end


private
  def forms_params
    params.require(:postmessage).permit(:users_id, :content)
  end
end
