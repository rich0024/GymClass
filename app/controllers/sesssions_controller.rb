class SesssionsController < ApplicationController
  def home
  end

  def logout
    reset_session
    redirect_to root_path
  end
end
