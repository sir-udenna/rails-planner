class ApplicationController < ActionController::API

    def logged_in?
        headers = request.headers['Authorization']
        token = headers.split(" ")[1]
        user_id = JWT.decode(token, "deez")[0]["user_id"]
        user = User.find(user_id)
        if user
            user

            puts user.id 
            puts user.username + ' logged in username'
            puts user.name + ' logged in name'
            
        else
            user = nil
        end
        render json: {error: "Please log in"} unless user
    end

end
