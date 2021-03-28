class UsersController < ApplicationController

    def index 
        users = User.all
        render json: users
    end 

    def create
        user = User.create!({ 
            name: permitted_params['name'],
            username: permitted_params['username'], 
            password_digest: permitted_params['password_digest'],
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
        params.require(:user).permit(:name, :username, :password_digest, :email, :age, :artist, :bio)
    end

end
