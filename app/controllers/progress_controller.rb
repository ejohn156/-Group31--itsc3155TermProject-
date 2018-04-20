class ProgressController < ApplicationController
  def index
  end
  def new
  end
  def create
    render plain: params[:progress].inspect
  end
end
