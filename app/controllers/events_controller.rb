class EventsController < ApplicationController

    def create
        event = Event.create!({ 
            name: permitted_params['name'],
            start: permitted_params['start'], 
            end: permitted_params['end'],
            summary: permitted_params['summary'],
            description: permitted_params['description'],
            price: permitted_params['price'],
            status: permitted_params['status'],
            age_restriction: permitted_params['age_restriction'],
            presented_by: permitted_params['presented_by'],
            image: permitted_params['image'],
            user: User.find(permitted_params['user_id']),
            venue: Event.find(permitted_params['venue_id'])
        })
        render json: event
    end

    def index 
        events = Event.where(user_id: params['user_id'], event_id: params['event_id'])
        render json: tickets
    end 

    def show
        event = Event.find_by(id: params[:id])
        render json: event
    end

    def destroy
        event = Event.find_by(id: params[:id])
        event.destroy
        render json: event
    end

    def update
        event = Event.find_by(id: params[:id])
        event.update!(permitted_params)
        render json: event
    end

    def permitted_params
        params.require(:event).permit(:name, :start, :end, :summary, :description, :price, :status, :age_restriction, :image, :presented_by, :user_id, :event_id)
    end

end
