class ImagesController < ApplicationController
    def index
        @images = Image.all
        render json: @images
    end

    def show
        @image = Image.find(params[:id])
        render json: @image
    end

    def create
        @image = Image.create(
            date: params[:date],
            explanation: params[:explanation],
            title: params[:title],
            url: params[:url]
            )
        render json: @image
    end

    def update
        @image = Image.find(params[:id])
        @image.update(
            date: params[:date],
            explanation: params[:explanation],
            title: params[:title],
            url: params[:url]
        )
        # @image.save
        render json: @image
    end

    def destroy
        @image = Image.find(params[:id])
        @image.destroy

        render json: @image
    end
    
end
