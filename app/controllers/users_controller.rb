class UsersController < ApplicationController 

    def index 
        users = User.all
        render json: users
    end

    def show 
        user = User.find_by(id: params[:id])
        render json: user
    end

    def create 
        user = User.new(user_params)
        if user.save
            session[:user_id] = user.id
            render json: { user: user, logged_in: true }
        else
            render json: { message: 'unable to create user' }
        end
    end

    private

    def user_params
        params.require(:user).permit(:username, :password, :password_confirmation)
    end
    
end