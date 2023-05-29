class ScorecardsController < ApplicationController
    def index
        @scorecards = Scorecard.all

        render json: @scorecards
    end

    def show
        @scorecard = Scorecard.includes(:course, :tee).find(params[:id])
    end

    def new
        @scorecard = Scorecard.new
    end

    def create
        @scorecard = Scorecard.new(scorecard_params)
        if @scorecard.save
            redirect_to scorecards_path, notice: 'Scorecard created successfully.'
        else
            render :new
        end
    end

    private

    def scorecard_params
        params.require(:scorecard).permit(:player_name, :hole_1, :hole_2, :hole_3, :hole_4, :hole_5, :hole_6, :hole_7, :hole_8, :hole_9, :hole_10, :hole_11, :hole_12, :hole_13, :hole_14, :hole_15, :hole_16, :hole_17, :hole_18)
    end
end