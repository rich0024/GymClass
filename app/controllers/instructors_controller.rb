class InstructorsController < ApplicationController
    def new
        @instructor = Instructor.new
    end

    def create
        @instructor = Instructor.new(instructor_params)
        if @instructor.save
            #log them in as an instructor
            session[:instructor_id] = @instructor.id
            #redirect to the show page
            redirect_to 'show'
        else
            render :new
        end
    end

    def show
    end

    def destroy 
    end

    private

    def instructor_params
        params.require(:instructor).permit(:name, :username, email, :password, :background)
    end

end
