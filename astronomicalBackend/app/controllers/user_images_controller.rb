class UserImagesController < ApplicationController
        def index
        @user_images = UserImage.all
        render json: @user_images
    end

    def show
        @user_image = UserImage.find(params[:id])
        render json: @user_image
    end

    def create
        @user_image = UserImage.create(
            user_id: params[:user_id],
            image_id: params[:image_id]
            )
        render json: @user_image
    end

    def update
        @user_image = UserImage.find(params[:id])
        @user_image.update(
            user_id: params[:user_id],
            image_id: params[:image_id]
        )
        # @user_image.save
        render json: @user_image
    end

    def destroy
        @user_image = UserImage.find(params[:id])
        @user_image.destroy

        render json: @user_image
    end
end
