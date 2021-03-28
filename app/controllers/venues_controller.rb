class VenuesController < ApplicationController

    def index 
        venues = Venue.all
        render json: venues
    end 

    def create
        venue = Venue.create!({ 
            address: permitted_params['address']
        })
        render json: venue
    end

    def show
        venue = Venue.find_by(id: params[:id])
        render json: venue
    end 

    def permitted_params
        params.require(:venue).permit(:address)
    end

end
