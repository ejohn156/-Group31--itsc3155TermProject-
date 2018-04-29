class WelcomeController < ApplicationController
  def index
    @exercises = Exercise.all
  end
  
  def about_us
  end
end
