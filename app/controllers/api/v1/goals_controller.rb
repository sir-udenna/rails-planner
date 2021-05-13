class Api::V1::GoalsController < ApplicationController
    before_action :logged_in?

    def index 
        goals = Goal.all
        render json: goals
    end 
    
    def create
    goal = Goal.create(goal_params)
    render json: goal, except: [:created_at, :updated_at]
    end 
    
    def update 
        goal = Goal.find(params[:id])
        goal.update(goal_params)
        render json: goal
    end 
    
    def destroy
        goal = Goal.find(params[:id])
        goal.destroy
    end 
    
    
    private
    def goal_params
        params.require(:goal).permit(:user_id, :name, :start, :completion)
    end

end
