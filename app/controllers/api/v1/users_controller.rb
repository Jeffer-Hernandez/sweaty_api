class Api::V1::UsersController < ApplicationController
    
    def index
        users = User.all
        render json: UserSerializer.new(users)
    end

    def create
        user = User.new(user_params)
        
        if user.save
            render json: user, status: :accepted
        else
            render json: {errors: user.errors.full_messages}, status: :unprocessable_entity
        end
    end

    def update
    end

    def destroy
    end

    private

    def user_params
        params.require(:user).permit(:name, :email, :password, :bio, :image_url)
    end
    
end
