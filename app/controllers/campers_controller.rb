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


    def edit
        @camper = camper.find(params[:id])
        @signups = Signup.all
        @activities = Activity.all
    end

    def update
        @camper = camper.find(params[:id])
        @camper.update(camper_params)
        redirect_to camper_path(@camper)
    end


    def destroy
        @camper = Camper.find(params[:id])
        @camper.destroy
        redirect_to campers_path
    end


    private

    def camper_params
        params.require(:camper).permit(:name, :age)
    end

end
