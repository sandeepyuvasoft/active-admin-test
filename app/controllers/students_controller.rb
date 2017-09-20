class StudentsController < ApplicationController
  def index
  	@students=Student.all
  end

  def import
  	begin
  		Student.import(params[:file])
    	redirect_to students_url, notice: "Students imported."
    rescue
    	redirect_to students_url, notice: "Invalid CSV file format."
    end
  end
end
