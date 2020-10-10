class LogsController < ApplicationController
  before_action :move_to_index
  before_action :set_logs, only:[:edit, :update, :destroy]

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

  def edit
  end

  def update
    if @log.update(log_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    if @log.destroy
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def log_params
    params.require(:log).permit(:suit, :min, :depth, :place, :transparency, :temperature, :date, :impressions, :image).merge(user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in?
      render "devise/sessions/new"
    end
  end

  def set_logs
    @log = Log.find(params[:id])
  end

end
