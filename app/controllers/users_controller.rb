class UsersController < ApplicationController
    skip_before_action :authorized, only: [:index]

    def index 
        users = User.all
        render json: users
    end 

    def create
        user = User.create!({ 
            name: permitted_params['name'],
            username: permitted_params['username'], 
            password: permitted_params['password'],
            age: permitted_params['age'],
            email: permitted_params['email'],
            bio: permitted_params['bio'],
            artist: permitted_params['artist'],
        })
        render json: user
    end

    def show
        user = User.find_by(id: params[:id])
        render json: user
    end 

    def permitted_params
        params.require(:user).permit(:name, :username, :password, :email, :age, :artist, :bio)
    end

    def token_authenticate
        token = request.headers["Authorization"]
        decoded_token = decode(token)
        user = User.find(decoded_token[0]['user_id'])
        render json:user 
    end 


end
