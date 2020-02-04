class UsersController < ApplicationController
        def index
        @users = User.all
        render json: @users
    end

    def show
        @user = User.find(params[:id])
        render json: @user
    end

    def create
        @user = User.create(
            name: params[:name],
            date_logged: params[:date_logged]
            )
        render json: @user
    end

    def update
        @user = User.find(params[:id])
        @user.update(
            name: params[:name],
            date_logged: params[:date_logged]
        )
        # @user.save
        render json: @user
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy

        render json: @user
    end
end
