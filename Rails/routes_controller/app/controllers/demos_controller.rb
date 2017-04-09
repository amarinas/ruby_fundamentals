class DemosController < ApplicationController
  def index
    render text: "hello to the world what do you want me to say"
  end

  def new
    render text: " hello to the new world in the new world database"
  end

  def edit
    render text: "hello joe how are you"
  end

  def mike
    unless params[:name]
      render text: "Saying Hello!"
    else
      if params[:name] == "michael"
        redirect_to "/say/hello/joe"
      else
        render text: "Saying Hello #{params[:name]}!"
      end
    end
  end
  def time
    session[:count] ||= 0
    render text: "You have visited this url #{session[:count] += 1} time(s)"
  end



def restart
  reset_session
  render text: "Destroyed Session"
end
end
