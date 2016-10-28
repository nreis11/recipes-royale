class HomeController < ApplicationController
  def index
    if !user_signed_in?
      render 'home/index'
    else
      redirect_to courses_path
    end
  end
end
