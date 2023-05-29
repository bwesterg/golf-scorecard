class CoursesController < ApplicationController
    def index
        @courses = Course.all
        render json: @courses
    end

    def show
        @course = Course.find(params[:id])
    end

    def new
        @course = Course.new
    end

    def create
        @course = Course.new(course_params)
        if @course.save
            redirect_to @course, notice: 'Course created successfully.'
        else
            render :new
        end
    end

    def update
        if @course.update(course_params)
          render json: @course
        else
          render json: @course.errors, status: :unprocessable_entity
        end
      end

    private

    def course_params
        params.require(:course).permit(:name, :yardage)
    end
end
