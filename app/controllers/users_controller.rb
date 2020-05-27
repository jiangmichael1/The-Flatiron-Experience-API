class UsersController < ApplicationController

    def index
        users = User.all
        render json: users.to_json( except: [:created_at, :updated_at])
    end

    def new
        User.new
    end

    def create
        user = User.create(user_params)
        render json: user.to_json( except: [:created_at, :updated_at])
    end

    def show
        user = User.find_by(id: params[:id])
    end

    private

    def user_params
        params.require(:user).permit(:name)
    end
end
