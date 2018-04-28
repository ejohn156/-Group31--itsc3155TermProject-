class ProgressController < ApplicationController
  def index
  @progresses = Progress.all
  end
  def new
  end
  
  def create
    @progress = Progress.new(progress_params)
    @progress.bmi = "%.2f" % ((703 * @progress.weight.to_i) / ((current_user.height_feet * 12.0 + current_user.height_inches) * (current_user.height_feet * 12.0 + current_user.height_inches)))
    @progress.save
    redirect_to @progress
  end
  
  def show
    @progress = Progress.find(params[:id])
  end
end


private 
def progress_params
  params.require(:progress).permit(:date, :weight, :bmi, :goal)
end
