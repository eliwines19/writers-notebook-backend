class SessionsController < ApplicationController

    def create
        user = User.find_by(username: params[:user][:username])

        if user && user.authenticate(params[:user][:password])
            session[:user_id] = user.id
            render json: { user: user, logged_in: true }
        else
            render json: { message: 'username and/or password is not in our database' }
        end
    end

    def logged_in
        user = User.find_by(id: session[:user_id])
        if user
            render json: { logged_in: true, user: user }
        else 
            render json: { logged_in: false, user: {} }
        end
    end

    def logout
        session.clear
        render json: { message: 'logged out', logged_in: false, user: {} }
    end
end