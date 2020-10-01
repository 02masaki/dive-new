class LogsController < ApplicationController
  before_action :move_to_index

  def index
    @logs = current_user.logs.order("created_at DESC")
    num = 0
    @logs.each do |i|
      num +=  1
    end
    @count = num
  end
  
  def new
    @log = Log.new
  end
  
  def create
    @log = Log.create(log_params)
    if @log.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def log_params
    params.require(:log).permit(:suit, :min, :depth, :place, :transparency, :temperature, :date, :impressions).merge(user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to "session#new"
    end
  end

end
