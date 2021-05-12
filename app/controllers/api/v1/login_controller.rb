class Api::V1::LoginController < ApplicationController

    def login
        user = User.find_by(username: auth_param[:name])
        byebug

        if user && user.authenticate(auth_param[:password])
            puts 'authenticated'
            render json: {username: user.name, token: JWT.encode({user_id: user.id}, "deez")}
            byebug
        else
            render json: {
               error: "Incorrect username or password",
               status: 401
            }, status: 401
            puts 'not auth'
            byebug
        end
        byebug
    end

    def auth_param
        params.require(:auth).permit(:name, :username, :password)
    end

end
