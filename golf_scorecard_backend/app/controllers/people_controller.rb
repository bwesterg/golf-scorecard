class PeopleController < ApplicationController

    def index
        @people = Person.all
        render json: @people
    end


    # private

    # def find_person
    #     @person = Person.find(params[:id])
    # end 

    # def person_params 
    #     params.require(:person).permit(:name)
    # end
end
