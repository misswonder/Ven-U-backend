class TicketsController < ApplicationController

    def create
        ticket = Ticket.create!({ 
            user: User.find(permitted_params['user_id']),
            event: Event.find(permitted_params['event_id'])
        })
        render json: ticket
    end

    def index 
        tickets = Ticket.where(user_id: params['user_id'], event_id: params['event_id'])
        render json: tickets
    end 

    def show
        ticket = Ticket.find_by(id: params[:id])
        render json: ticket
    end

    def destroy
        ticket = Ticket.find_by(id: params[:id])
        ticket.destroy
        render json: ticket
    end

    def update
        ticket = Ticket.find_by(id: params[:id])
        ticket.update!(permitted_params)
        render json: ticket
    end

    def permitted_params
        params.require(:ticket).permit(:user_id, :event_id)
    end

end
