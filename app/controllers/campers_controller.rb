class CampersController < ApplicationController

    def index
        @campers = Camper.all
        @activities = Activity.all
    end

    def new
        @camper = Camper.new
    end

    def create
        @camper = Camper.create(camper_params)
        redirect_to camper_path(@camper)
    end

    def show
        @camper = Camper.find(params[:id])
    end


    private

    def camper_params
        params.require(:camper).permit(:name, :age)
    end

end
