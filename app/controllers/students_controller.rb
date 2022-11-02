class StudentsController < ApplicationController

    # get '/students'
    def index
        students = Student.all
        render json: students
    end

    # get '/students/grades'
    def grades
        grades = Student.all.order(grade: :desc)
        render json: grades
    end

    def highest_grade
        highest = Student.grades.first
        render json: highest
    end
end
