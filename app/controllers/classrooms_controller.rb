class ClassroomsController < ApplicationController
  def show
    @classroom = Classroom.find(params[:id])
    # @student = @classroom.oldest_student
  end

  def index
    @classrooms = Classroom.all
  end

  # def search

  # end
end
