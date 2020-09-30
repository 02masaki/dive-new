class LogsController < ApplicationController
  before_action :move_to_index

  def index
    @logs = Log.all
  end
  
  def new
    @log = Log.new
  end
  
  def create
    @log = Log.create(log_params)
    @logs = Log.all
  end

  private

  def log_params
    params.require(:log).permit(:date, :depth, :min, :place, :suit, :transparency, :temperature).merge(user: current_user.id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to "session#new"
    end
  end

end
