class BirdsController < ApplicationController

    # GET /birds
    def index
        birds = Bird.all
        render json: birds
    end

    #GET /birds/:id
    def show
        bird = Bird.find_by(id: params[:id])
        if bird
            render json: bird
        else 
            render json: { error: "Bird not found" }, status: :not_found
        end
    end


    # DELETE /birds/:id
    def destroy
        bird = Bird.find_by(:id params[:id]).destroy
        render json: bird
    end


end
