class TargetsController < ApplicationController
  def index
    @targets = Target.all
  end

  def new
    @target = Target.new
  end

  def create
    @target = Target.new(target_params)
    if @target.save
      redirect_to deals_path
    else
      render :new
    end
  end

  def show
    @target = Target.find(params[:id])
  end

  def edit
    @target = Target.find(params[:id])
  end

  def update
    if @target.update(target_params)
      redirect_to deals_path
    else
      render :edit
    end
  end

  private

  def target_params
    params.require(:target).permit(:name, :sector, :identifier, :url, :annual_report)
  end
end