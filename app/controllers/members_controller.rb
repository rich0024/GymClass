class MembersController < ApplicationController
    def new
        @member = Member.new
    end

    def create
        @member = Member.new(member_params)
        if @member.save
            #log them in as a member
            session[:member_id] = @member.id
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

    def member_params
        params.require(:member).permit(:name, :username, email, :password)
    end

end
