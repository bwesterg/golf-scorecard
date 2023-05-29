class TeesController < ApplicationController
    before_action :set_course
  
    def index
      @tees = Tee.all
      render json: @tees
    end
  
    def new
      @tee = @course.tees.new
    end
  
    def create
      @tee = @course.tees.new(tee_params)
      if @tee.save
        redirect_to course_tees_path(@course), notice: 'Tee created successfully.'
      else
        render :new
      end
    end
  
    private
  
    def set_course
      @course = Course.find(params[:course_id])
    end
  
    def tee_params
      params.require(:tee).permit(:name, :yardage)
    end
  end
  