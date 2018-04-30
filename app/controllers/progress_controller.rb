class ProgressController < ApplicationController
  def index
  @progresses = Progress.all
  end
  def new
    @progress = Progress.new
  end
  
  def create
    @progress = Progress.new(progress_params)
    
    if @progress.save
    redirect_to @progress
  else
    render 'new'
    end
  end
  
  def show
    @progress = Progress.find(params[:id])
  end
  def destroy
    @progress = Progress.find(params[:id])
    @progress.destroy
    redirect_to progress_index_path
  end
end


private 
def progress_params
  params.require(:progress).permit(:date, :weight, :bmi, :goal)
end
