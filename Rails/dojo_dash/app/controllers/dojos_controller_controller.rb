class DojosControllerController < ApplicationController
  def index
    @dojos = Dojo.all
  end

  def new
  end

  def create
    @dojo = Dojo.new(form_params)

    if @dojo.save
    flash[:notice] = "form submitted correctly"
    redirect_to root_url
    else
      flash[:errors] = @dojo.errors.full_messages
      redirect_to '/dojos/new'
    end
  end

  def show
    # fail
    @show = Dojo.find(params[:id])
  end

  def edit
    @show = Dojo.find(params[:id])
  end

  def update
    # fail
    show = Dojo.find(params[:id])
    show.update(form_params)
    redirect_to '/'

  end

  def destroy
    Dojo.find(params[:id]).destroy
    flash[:success] = "Item has been deleted"
    redirect_to '/'
  end

private

def form_params
  params.require(:cdBranch).permit(:branch, :street, :city, :state)
end


end
