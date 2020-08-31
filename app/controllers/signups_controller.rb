class SignupsController < ApplicationController


    def index
        @signups = Signup.all
        @campers = Camper.all
        @activities = Activity.all
    end

    def new
        @signup = Signup.new
        @campers = Camper.all
        @activities = Activity.all
    end

    def create
        @signup = Signup.create(signup_params)
        @signup.save
        redirect_to signups_path
    end

    def show
        @signup = Signup.find(params[:id])
        @campers = Camper.all
        @activities = Activity.all
    end

    def edit
        @signup = Signup.find(params[:id])
        @campers = Camper.all
        @activities = Activity.all
    end

    def update
        @signup = Signup.find(params[:id])
        @signup.update(signup_params)
        redirect_to signup_path(@signup)
    end

    def destroy
        @signup = Signup.find(params[:id])
        @signup.destroy
        redirect_to signups_path
    end

    private

    def signup_params
        params.require(:signup).permit(:camper_id, :activity_id, :time)
    end

end
