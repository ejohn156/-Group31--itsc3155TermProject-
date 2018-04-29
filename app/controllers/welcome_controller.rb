class WelcomeController < ApplicationController
  def index
    @exercises = Exercise.all
    @progress = Progress.all
    @current = Progress.last
  end
  
  def about_us
  end
end
