class SurveysControllerController < ApplicationController
  def index
    session[:views] ||= 0
  end

  def result

    @result = session[:result]

  end

  def submit
    session[:views] += 1
     session[:result] = params[:survey]
     flash[:success] = " You have submitted this form #{ session[:views] } time(s) now."
    redirect_to '/result'

  end
end
