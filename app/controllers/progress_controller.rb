class ProgressController < ApplicationController
  def new
  end
  
  def create
    render plain: params[:progress].inspect
  end
end
