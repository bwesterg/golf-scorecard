class CoursesController < ApplicationController

    def index
        @course = Course.all
        render json: @courses
    end


    private

    def find_course
        @course = Course.find(params[:id])
    end 

    def course_params 
        params.require(:course).permit(:name)
    end
end
