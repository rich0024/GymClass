class FitnessClassesController < ApplicationController
    def new
        @fitness_class = FitnessClass.new
    end

    def show
        @fitness_classes = FitnessClass.all
    end

    def create
        @fitness_class = FitnessClass.new(fitness_params)
    end

    def edit
        @fitness_class = FitnessClass.find_by_id(params[:id])
    end

    def destroy
        FitnessClass.find_by_id(params[:id]).delete
        redirect_to root
    end
end
