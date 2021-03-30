class VenuesController < ApplicationController

    def index 
        venues = Venue.all
        render json: venues
    end 

    def create
        venue = Venue.create!({ 
            name: permitted_params['name'],
            address: permitted_params['address'],
            image: permitted_params['image'],
            description: permitted_params['description'],
            price: permitted_params['price'],
            availability: permitted_params['availability']
        })
        render json: venue
    end

    def show
        venue = Venue.find_by(id: params[:id])
        render json: venue
    end 

    def permitted_params
        params.require(:venue).permit(:name, :address, :image, :description, :price, :availability)
    end

end
