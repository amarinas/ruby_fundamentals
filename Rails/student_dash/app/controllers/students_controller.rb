class StudentsController < ApplicationController
  def new
    @dojos = Dojo.all
    @dojo = Dojo.find(params[:dojo_id])

  end

  def create
    @dojos = Dojo.find(params[:dojo_id])
    @student = Student.new(student_params)
    if @student.save
    flash[:notice] = "form submitted correctly"
    redirect_to "/dojos/#{@student.dojo_id}"
    else
      flash[:errors] = @student.errors.full_messages
      redirect_to :back
    end

  end

  def edit
    @dojos = Dojo.all
    @dojo = Dojo.find(params[:dojo_id])
    @students = Student.find(params[:id])

  end

  def show
    @dojo = Dojo.find(params[:dojo_id])
    @students = Student.find(params[:id])
    @cohort = Dojo.find(params[:dojo_id]).students
  end

  def update
      @students = Student.find(params[:id])
      @students.update(student_params)
      flash[:errors] = "Update complete"
      redirect_to "/dojos/#{@students.dojo_id}/students/#{@students.id}"

  end

  def destroy
    Student.find(params[:id]).destroy
    flash[:success] = "Item has been deleted"
    redirect_to '/'
  end


  private

    def student_params
      params.require(:ninjas).permit(:first_name, :last_name, :email, :dojo_id)

    end
  end
